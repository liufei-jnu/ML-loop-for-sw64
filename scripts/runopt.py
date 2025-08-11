import subprocess
import os
import timeit
import csv
import argparse
from multiprocessing import Pool
from itertools import repeat
import glob

def clean_intermediate_files(directory):
    """清理目录中的目标文件和可执行文件"""
    for ext in ('*.o', '*.out', 'a.out', 'exec_*'):
        for filepath in glob.glob(os.path.join(directory, ext)):
            try:
                os.remove(filepath)
            except OSError:
                pass

def timed_run(executable_file):
    """测量执行时间"""
    start_time = timeit.default_timer()
    try:
        subprocess.run([executable_file], check=True, 
                      stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError:
        return float('inf')  # 执行出错返回无穷大时间
    return timeit.default_timer() - start_time

def compile_single_file(source_file, output_dir, opt_sequence, pass_id):
    """编译单文件并应用优化选项"""
    try:
        executable_file = os.path.join(output_dir, f"exec_{pass_id}")
        
        # 直接编译为可执行文件，将优化选项加入编译命令
        cmd = f"clang {source_file} {' '.join(opt_sequence)} -o {executable_file}"
        subprocess.run(
            cmd,
            shell=True, check=True,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        
        # 测量执行时间
        execution_time = timed_run(executable_file)
        return execution_time, pass_id
        
    except subprocess.CalledProcessError as e:
        print(f"编译失败 (pass {pass_id}): {e.stderr.decode()}")
        return float('inf'), pass_id

def compile_multi_file_project(input_name, test_directory, output_dir, opt_sequence, pass_id):
    """编译多文件项目并应用优化选项"""
    try:
        project_dir = os.path.join(test_directory, input_name)
        executable_file = os.path.join(output_dir, f"exec_{pass_id}")
        
        # 收集所有源文件
        src_files = []
        for src_file in os.listdir(project_dir):
            if src_file.endswith(('.c', '.cpp')):
                src_files.append(os.path.join(project_dir, src_file))
        
        if not src_files:
            return float('inf'), pass_id
            
        # 直接编译链接为可执行文件
        cmd = f"clang {' '.join(src_files)} {' '.join(opt_sequence)} -o {executable_file}"
        subprocess.run(
            cmd,
            shell=True, check=True,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        
        # 测量执行时间
        execution_time = timed_run(executable_file)
        return execution_time, pass_id
        
    except subprocess.CalledProcessError as e:
        print(f"多文件编译失败 (pass {pass_id}): {e.stderr.decode()}")
        return float('inf'), pass_id

def createDataset(directory):
    test_directory = os.path.abspath(os.path.join(os.path.dirname(__file__), directory))
    
    # 读取优化序列
    with open('optimization_permutations.txt', 'r') as file:
        optimization_permutations = [line.strip().split() for line in file]

    # 识别测试用例
    test_cases = []
    for item in os.listdir(test_directory):
        item_path = os.path.join(test_directory, item)
        if os.path.isfile(item_path) and item.endswith(('.c', '.cpp')):
            test_cases.append((item, "single"))
        elif os.path.isdir(item_path):
            if any(f.endswith(('.c', '.cpp')) for f in os.listdir(item_path)):
                test_cases.append((item, "multi"))

    results = []

    for input_name, input_type in test_cases:
        print(f'处理 {input_name} ({input_type})...')
        output_dir = os.path.join("output", input_name)
        os.makedirs(output_dir, exist_ok=True)
        
        # 清理旧文件
        clean_intermediate_files(output_dir)
        
        times = []
        
        if input_type == "single":
            # 单文件程序 - 并行处理
            source_file = os.path.join(test_directory, input_name)
            
            with Pool() as pool:
                args = zip(
                    repeat(source_file),
                    repeat(output_dir),
                    optimization_permutations,
                    range(len(optimization_permutations))
                )
                for result in pool.starmap(compile_single_file, args):
                    times.append(result)
                    
        else:
            # 多文件程序
            try:
                for pass_id, opt_sequence in enumerate(optimization_permutations):
                    time_taken, pid = compile_multi_file_project(
                        input_name, test_directory, output_dir, opt_sequence, pass_id
                    )
                    times.append((time_taken, pid))
                    
                    # 清理本次优化生成的文件
                    if os.path.exists(os.path.join(output_dir, f"exec_{pass_id}")):
                        os.remove(os.path.join(output_dir, f"exec_{pass_id}"))
                        
            except Exception as e:
                print(f"处理 {input_name} 失败: {str(e)}")
                continue
                
        # 记录最佳结果（仅保留文件名、最佳执行时间、优化序列ID）
        if times:
            times.sort()
            best_time, best_pass = times[0]
            results.append([input_name, best_time, best_pass])  # 移除了优化序列
            print(f"{input_name} 最佳时间: {best_time:.6f} (优化序列 {best_pass})")
            
        # 清理最终文件
        clean_intermediate_files(output_dir)

    # 保存结果（仅3列）
    os.makedirs("./temp", exist_ok=True)
    with open("./temp/best_optimization_results.csv", mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["文件名", "最佳执行时间", "最佳优化序列ID"])  # 移除了"最佳优化序列"
        writer.writerows(results)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('training_dir', help="测试目录的相对路径")
    args = parser.parse_args()
    
    # 确保输出目录存在
    os.makedirs("output", exist_ok=True)
    createDataset(args.training_dir)
