import os 
import subprocess

# Directory path to featurePass
directory_path = os.path.join(os.path.dirname(__file__), '../featurePass/build/')
training_root="../files/simple"
training_subdir="lf-simple"
training_dirs=[training_root, os.path.join(training_root, training_subdir)]

test_files='../files/test/'
temp_dir='./temp/'
output_dir='../mlModel'
training_output='../temp/best_optimization_results.csv'
ml_model='../mlModel/'

# Import all python requirements
subprocess.run(['pip3', 'install', '-r', '../requirements.txt'])

# Make build directory if it doesnt exist
if not os.path.exists(directory_path):
    os.makedirs(directory_path)

# Create FeaturePass.so executable
subprocess.run(['cmake', '..'], cwd=directory_path)
subprocess.run(['make'], cwd=directory_path)

# === Training Phase ===

# 遍历每个训练目录进行 runOptimizations.py
for train_dir in training_dirs:
    subprocess.run(['python3', 'runOptimizations.py', train_dir])

# 遍历每个训练目录进行特征提取
for train_dir in training_dirs:
    subprocess.run(['python3', 'collectFeatures.py', 'training', train_dir])

# 合并训练特征
subprocess.run([
    'python3', 'combineFeatures.py',
    f'--training_opt', training_output,
    'training',
    os.path.join(output_dir, 'training.csv')
])

# === Inference Phase ===
subprocess.run(['python3', 'collectFeatures.py', 'test', test_files])
subprocess.run(['python3', 'combineFeatures.py', 'test', os.path.join(output_dir, 'test.csv')])

# === Model Training & Inference ===
subprocess.run(['python3', 'multiModel.py'], cwd=ml_model)
subprocess.run(['python3', 'inference.py'], cwd=ml_model)

# === Visualization ===
subprocess.run(['python3', 'visualization.py'], cwd=ml_model)