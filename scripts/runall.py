import os
import subprocess
import sys

# Directory path to featurePass
directory_path = os.path.join(os.path.dirname(__file__), '../featurePass/build/')
training_files="../files/simple"
temp_dir='./temp/'
output_dir='../mlModel'
training_output='../temp/best_optimization_results.csv'
ml_model='../mlModel/'

# Mapping of input numbers to test files
test_file_mapping = {
    '600': '600.perlbench_s',
    '602': '602.gcc_s',
    '605': '605.mcf_s',
    '620': '620.omnetpp_s',
    '623': '623.xalancbmk_s',
    '625': '625.x264_s',
    '631': '631.deepsjeng_s',
    '641': '641.leela_s',
    '657': '657.xz_s'
}

# Get test file from command line argument
if len(sys.argv) > 1:
    input_num = sys.argv[1]
    test_files = f'../files/{test_file_mapping.get(input_num, "605.mcf_s")}/'
else:
    test_files = '../files/605.mcf_s/'  # default

# Workflow: Create FeaturePass.so -> generatePermutations.py -> runOptimizations.py -> collectFeatures.py -> combineFeatures.py -> inference.py -> visualization.py

# Import all python requirements
subprocess.run(['pip3', 'install', '-r', '../requirements.txt'])

# Make build directory if it doesnt exist
if not os.path.exists(directory_path):
    os.makedirs(directory_path)

# Create FeaturePass.so executable
subprocess.run(['cmake', '..'], cwd=directory_path)
subprocess.run(['make'], cwd=directory_path)

# Run generatePermutations.py
#subprocess.run(['python3', 'generatePermutations.py'])

#Training
#subprocess.run(['python3', 'ch-runOptimizations.py', training_files])
#subprocess.run(['python3', 'new-runOpt.py', training_files])
subprocess.run(['python3', 'runopt.py', training_files])
subprocess.run(['python3', 'ch-collectFeatures.py', 'training', training_files])
subprocess.run(' '.join(['python3', 'combineFeatures.py',f'--training_opt {training_output}','training',output_dir+'/training.csv']),shell=True)

#Inference SPEC
#subprocess.run(['python3', 'spec-collectFeatures.py', 'test', test_files])
#subprocess.run(['python3', 'combineFeatures.py','test',output_dir+'/test.csv'])

#Model
subprocess.run(['python3', 'train.py'], cwd=ml_model)
subprocess.run(['python3', 'infer.py'], cwd=ml_model)

