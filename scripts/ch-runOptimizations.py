import subprocess
import os
import timeit
import csv
import heapq
import argparse
from multiprocessing import Pool
from itertools import repeat
import glob

def clean_ll_bc_files(directory):
    """清理目录中的所有.ll和.bc文件"""
    for ext in ('*.ll', '*.bc'):
        for filepath in glob.glob(os.path.join(directory, ext)):
            try:
                os.remove(filepath)
            except OSError:
                pass

def timed_run(executable_file, terminal=False):
    """测量执行时间"""
    if not terminal:
        start_time = timeit.default_timer()
        subprocess.run([executable_file], check=True)
        return timeit.default_timer() - start_time
    else:
        return timeit.timeit(
            stmt=f"subprocess.call(['{executable_file}'], stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)",
            setup="import subprocess",
            number=1
        )

def compile_multi_file_project(input_name, test_directory, output_dir):
    """专门处理多文件项目的编译"""
    try:
        project_dir = os.path.join(test_directory, input_name)
        output_dir = os.path.join(output_dir, input_name)
        os.makedirs(output_dir, exist_ok=True)
        
        # 清理旧文件
        clean_ll_bc_files(output_dir)
        
        # 1. 编译所有源文件为LLVM IR
        ll_files = []
        for src_file in os.listdir(project_dir):
            if src_file.endswith(('.c', '.cpp')):
                src_path = os.path.join(project_dir, src_file)
                ll_file = os.path.join(output_dir, f"{os.path.splitext(src_file)[0]}.ll")
                subprocess.run(
                    f"clang -S -emit-llvm {src_path} -Xclang -disable-O0-optnone -o {ll_file}",
                    shell=True, check=True,
                    stdout=subprocess.PIPE, stderr=subprocess.PIPE
                )
                ll_files.append(ll_file)
        
        # 2. 链接所有IR文件
        linked_ll = os.path.join(output_dir, f"{input_name}_linked.ll")
        subprocess.run(
            f"llvm-link {' '.join(ll_files)} -o {linked_ll}",
            shell=True, check=True,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        
        return linked_ll
        
    except subprocess.CalledProcessError as e:
        print(f"Error compiling {input_name}: {e.stderr.decode()}")
        raise

def optimize_and_measure(input_file, opt_sequence, pass_id, output_dir):
    """执行优化并测量性能"""
    try:
        # 应用优化pass
        opt_flags = ' '.join(opt_sequence)
        optimized_file = os.path.join(output_dir, f"opt_{pass_id}.ll")
        
        subprocess.run(
            f"clang {opt_flags} {input_file} -o {optimized_file}",
            shell=True, check=True,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        
        # 编译为可执行文件
        executable_file = os.path.join(output_dir, f"exec_{pass_id}")
        subprocess.run(
            f"clang {optimized_file} -o {executable_file}",
            shell=True, check=True,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        
        # 测量执行时间
        execution_time = timed_run(executable_file, True)
        return execution_time, pass_id
        
    except subprocess.CalledProcessError as e:
        print(f"Optimization failed for pass {pass_id}: {e.stderr.decode()}")
        return float('inf'), pass_id

def createDataset(directory):
    test_directory = os.path.abspath(os.path.join(os.path.dirname(__file__), directory))
    
    # 读取优化序列
    with open('optimization_permutations.txt', 'r') as file:
        optimization_permutations = [line.strip().split(',') for line in file]

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
    store_size = 1  # 存储的最佳结果数量

    for input_name, input_type in test_cases:
        print(f'Processing {input_name} ({input_type})...')
        output_dir = os.path.join("output", input_name)
        os.makedirs(output_dir, exist_ok=True)
        
        # 清理旧文件
        clean_ll_bc_files(output_dir)
        
        times = []
        
        if input_type == "single":
            # 单文件程序 - 保持并行优化
            source_file = os.path.join(test_directory, input_name)
            non_optimized_file = os.path.join(output_dir, f"{input_name}_0.ll")
            
            subprocess.run(
                f"clang -S -emit-llvm {source_file} -Xclang -disable-O0-optnone -o {non_optimized_file}",
                shell=True, check=True,
                stdout=subprocess.PIPE, stderr=subprocess.PIPE
            )
            
            with Pool() as pool:
                args = zip(
                    repeat(non_optimized_file),
                    optimization_permutations,
                    range(len(optimization_permutations)),
                    repeat(output_dir)
                )
                for result in pool.starmap(optimize_and_measure, args):
                    times.append(result)
                    
        else:
            # 多文件程序 - 串行执行
            try:
                linked_ll = compile_multi_file_project(input_name, test_directory, "output")
                
                for pass_id, opt_sequence in enumerate(optimization_permutations):
                    time_taken, pid = optimize_and_measure(linked_ll, opt_sequence, pass_id, output_dir)
                    times.append((time_taken, pid))
                    
                    # 每次优化后清理生成的中间文件（保留原始linked.ll）
                    for f in glob.glob(os.path.join(output_dir, "opt_*.ll")):
                        os.remove(f)
                    for f in glob.glob(os.path.join(output_dir, "exec_*")):
                        os.remove(f)
                        
            except Exception as e:
                print(f"Failed to process {input_name}: {str(e)}")
                continue
                
        # 记录最佳结果
        if times:
            times.sort()
            best_time, best_pass = times[0]
            results.append([input_name, best_time, best_pass])
            print(f"Best time for {input_name}: {best_time:.6f} (pass {best_pass})")
            
        # 清理最终文件
        clean_ll_bc_files(output_dir)

    # 保存结果
    os.makedirs("./temp", exist_ok=True)
    with open("./temp/best_optimization_results.csv", mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["filename", "Best Time", "Best Opt Pass"])
        writer.writerows(results)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('training_dir', help="relative path to test directory")
    args = parser.parse_args()
    
    # 确保输出目录存在
    os.makedirs("output", exist_ok=True)
    createDataset(args.training_dir)
