import csv
import joblib

def load_optimization_sequences():
    """加载优化序列文件并返回序列列表"""
    print("开始加载优化序列...")
    sequences = []
    with open('../scripts/optimization_permutations.txt', 'r') as file:
        for line in file:
            sequences.append(line.strip().split(','))
    print(f"成功加载 {len(sequences)} 个优化序列")
    return sequences

def predict_with_models():
    # 加载优化序列
    optimization_sequences = load_optimization_sequences()
    num_sequences = len(optimization_sequences)
    
    # 模型列表
    model_names = ['GradientBoosting']
    
    # 读取测试数据
    test_file = 'test.csv'
    testing_features = []
    with open(test_file, newline='') as csvfile:
        reader = csv.reader(csvfile)
        headers = next(reader)  # 跳过标题行
        for row in reader:
            testing_features.append(row)
    
    
    # 打印结果标题
    print("\n===== 预测结果 =====")
    print(f"{'文件名':<20} | 预测优化序列")
    print("-" * 60)
    
    # 准备结果字典
    results = {}
    
    # 对每个测试样本进行预测
    for i in range(len(testing_features)):
        filename = testing_features[i][0]
        results[filename] = {}
        
        # 提取特征并转换为浮点数
        X_test = list(map(float, testing_features[i][1:]))
        
        # 每个模型的预测过程
        for model_name in model_names:
            # 加载模型和标准化器
            model_filename = f"{model_name}_model.pkl"
            scaler_filename = f"{model_name}_scaler.pkl"
            
            model = joblib.load(model_filename)
            scaler = joblib.load(scaler_filename)
            
            # 特征标准化并预测
            X_test_normalized = scaler.transform([X_test])
            predicted_opt_id = int(round(model.predict(X_test_normalized)[0]))
            
            # 确保预测ID在有效范围内
            predicted_opt_id = max(0, min(predicted_opt_id, num_sequences - 1))
            
            # 获取优化序列
            opt_sequence = optimization_sequences[predicted_opt_id]
            sequence_str = ','.join(opt_sequence)
            
            # 保存结果
            results[filename][model_name] = sequence_str
            
            # 打印结果（左对齐文件名，方便查看）
            print(f"{filename:<20} | {sequence_str}")
    
    # 写入结果到CSV
    output_file = 'predictions.csv'
    with open(output_file, 'w', newline='') as csvfile:
        fieldnames = ['Filename'] + model_names
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        
        writer.writeheader()
        for filename, predictions in results.items():
            row = {'Filename': filename}
            row.update(predictions)
            writer.writerow(row)
    
    print("\n" + "-" * 60)
    print(f"所有预测结果已保存至: {output_file}")

if __name__ == "__main__":
    print("===== 模型预测程序开始 =====")
    predict_with_models()
    print("===== 模型预测程序结束 =====")
    
