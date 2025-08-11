#!/bin/bash
# static_feature_extractor.sh - 替代PGO的静态特征提取方案

# 输出文件与原始脚本保持一致
rm -f features.csv

# 需要安装的工具: clang, opt, llvm (同原脚本)
PATH2LIB="../../featurePass/build/featurePass/FeaturePass.so"  # 保持相同路径
PASS=fp  # 保持相同pass名称

# 迭代处理所有C/C++文件
for filename in *.c *.cpp; do
    if [ -f "$filename" ]; then
        printf "Running static analysis on %s\n" "$filename"
        
        # 1. 编译为LLVM bitcode (不启用PGO)
        clang -emit-llvm -c "$filename" -Xclang -disable-O0-optnone -o "${filename%.*}.bc"
        
        # 2. 运行静态特征提取pass (不收集profile数据)
        echo "Output for $filename:" >> features.csv
        opt --disable-output -load-pass-plugin="${PATH2LIB}" -passes="${PASS}" "${filename%.*}.bc" >> features.csv 2>&1
        echo "" >> features.csv
        
        # 3. 清理 (保留与原始脚本相同的清理行为)
        rm -f "${filename%.*}.bc"
    fi
done
