#!/bin/bash
# static_run.sh - 静态特征提取替代方案

# 保持与原脚本相同的输出文件
rm -f features.csv loop_features.csv

PATH2LIB="../../featurePass/build/featurePass/FeaturePass.so"
PASS=fp

for filename in *.c *.cpp; do
    if [ -f "$filename" ]; then
        printf "Running static analysis on %s\n" "$filename"
        
        # 生成LLVM bitcode
        clang -emit-llvm -c "$filename" -Xclang -disable-O0-optnone -o "${filename%.*}.bc"
        
        # 运行特征提取pass (静态版本)
        echo "Output for $filename:" >> features.csv
        opt --disable-output -load-pass-plugin="${PATH2LIB}" -passes="${PASS}" "${filename%.*}.bc" >> features.csv 2>&1
        echo "" >> features.csv
        
        # 运行循环特征提取 (保持与原流程一致)
        echo "Output for $filename:" >> loop_features.csv
        opt --disable-output -load-pass-plugin="${PATH2LIB}" -passes="loop-fp" "${filename%.*}.bc" >> loop_features.csv 2>&1
        echo "" >> loop_features.csv
        
        # 清理
        rm -f "${filename%.*}.bc"
    fi
done
