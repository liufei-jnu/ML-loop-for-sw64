import csv
import joblib
from sklearn.ensemble import RandomForestRegressor
from sklearn.svm import SVR
from sklearn.ensemble import GradientBoostingRegressor
from sklearn.preprocessing import StandardScaler

def train_and_save_models():
    # ======================
    # 推荐使用的算法(实际实现的)
    # ======================
    models_to_train = [
        ('RandomForest', RandomForestRegressor(n_estimators=100, random_state=0))
        # ======================
        # 备选算法(注释保留)
        # ======================
        # ('SVR_RBF', SVR(kernel='rbf')),  # 支持向量机RBF核
        # ('GradientBoosting', GradientBoostingRegressor(random_state=0))  # 梯度提升树
    ]
    
    # 读取训练数据
    training_file = 'training.csv'
    features = []
    with open(training_file, newline='') as csvfile:
        reader = csv.reader(csvfile)
        headers = next(reader)  # 跳过标题行
        for row in reader:
            features.append(row)
    
    # 提取特征和目标变量
    X = [list(map(float, row[1:-2])) for row in features]  # 特征
    y = [int(row[-1]) for row in features]  # 目标变量
    
    # 特征标准化
    scaler = StandardScaler()
    X_normalized = scaler.fit_transform(X)
    
    # 训练并保存选定的模型
    for model_name, model in models_to_train:
        print(f"\nTraining {model_name}...")
        model.fit(X_normalized, y)
        
        # 保存模型和scaler
        model_filename = f"{model_name}_model.pkl"
        scaler_filename = f"{model_name}_scaler.pkl"
        
        joblib.dump(model, model_filename)
        joblib.dump(scaler, scaler_filename)
        
        print(f"Saved {model_name} model to {model_filename}")
        print(f"Saved scaler to {scaler_filename}")

if __name__ == "__main__":
    train_and_save_models()
