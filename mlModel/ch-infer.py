import csv
import joblib

def load_optimization_sequences():
    """加载optimization_permutations.txt文件中的优化序列"""
    sequences = []
    with open('../scripts/optimization_permutations.txt', 'r') as file:
        for line in file:
            sequences.append(line.strip().split(','))
    return sequences

def predict_with_models():
    # 加载优化序列
    optimization_sequences = load_optimization_sequences()
    
    # ======================
    # 推荐使用的算法(实际实现的)
    # ======================
    model_names = ['RandomForest']
    # ======================
    # 备选算法(注释保留)
    # ======================
    # model_names = [
    #     'RandomForest',
    #     'SVR_RBF',  # 支持向量机RBF核
    #     'GradientBoosting'  # 梯度提升树
    # ]
    
    # 读取测试数据
    test_file = 'test.csv'
    testing_features = []
    with open(test_file, newline='') as csvfile:
        reader = csv.reader(csvfile)
        headers = next(reader)  # 跳过标题行
        for row in reader:
            testing_features.append(row)
    
    # 准备结果字典
    results = {}
    
    # 对每个测试文件进行预测
    for i in range(len(testing_features)):
        filename = testing_features[i][0]
        results[filename] = {}
        
        # 提取特征
        X_test = list(map(float, testing_features[i][1:]))  # 所有特征
        
        # 对每个模型进行预测
        for model_name in model_names:
            # 加载模型和scaler
            model_filename = f"{model_name}_model.pkl"
            scaler_filename = f"{model_name}_scaler.pkl"
            
            model = joblib.load(model_filename)
            scaler = joblib.load(scaler_filename)
            
            # 特征标准化并预测
            X_test_normalized = scaler.transform([X_test])
            predicted_opt_id = int(round(model.predict(X_test_normalized)[0]))
            
            # 确保预测ID在有效范围内
            predicted_opt_id = max(0, min(predicted_opt_id, len(optimization_sequences)-1))
            
            # 获取实际的优化序列
            opt_sequence = optimization_sequences[predicted_opt_id]
            
            results[filename][model_name] = ' '.join(opt_sequence)  # 将序列转换为字符串
            print(f"Predicted Best Opt Sequence for {filename} using {model_name}: {' '.join(opt_sequence)}")
    
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
    
    print(f"\nPredictions with actual optimization sequences saved to {output_file}")

if __name__ == "__main__":
    predict_with_models()
