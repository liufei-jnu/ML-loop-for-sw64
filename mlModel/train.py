import csv
import joblib
from sklearn.preprocessing import StandardScaler
# 使用scikit-learn内置的梯度提升树
from sklearn.ensemble import GradientBoostingRegressor

# 读取训练数据
X = []
y = []
with open('training.csv', 'r') as f:
    reader = csv.reader(f)
    next(reader)  # 跳过标题行
    for row in reader:
        # 提取特征 (第2列到倒数第3列)
        features = list(map(float, row[1:-2]))
        # 提取目标变量 (最后一列)
        target = int(row[-1])
        X.append(features)
        y.append(target)

# 特征标准化
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

# 定义梯度提升树模型
model = GradientBoostingRegressor(
    n_estimators=200,      # 树的数量
    learning_rate=0.05,    # 学习率
    max_depth=5,           # 树的最大深度
    min_samples_split=10,  # 分裂内部节点所需的最小样本数
    min_samples_leaf=4,    # 叶节点所需的最小样本数
    subsample=0.8,         # 子采样比例
    random_state=0,        # 随机种子，保证结果可复现
    verbose=1              # 训练过程中输出信息
)

# 训练模型
print("开始训练梯度提升树模型...")
model.fit(X_scaled, y)
print("模型训练完成!")

# 保存模型和标准化器
joblib.dump(model, 'GradientBoosting_model.pkl')
joblib.dump(scaler, 'GradientBoosting_scaler.pkl')
print("模型和标准化器已保存!")
    
