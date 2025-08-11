#!/bin/bash

rm -f ./*.ll
rm -f ./*.bc
# 生成IR
for f in *.c; do
    clang -S -emit-llvm -Xclang -disable-O0-optnone $f -o ${f%.c}.ll || exit 1
done

# 链接IR
llvm-link *.ll -o linked.ll || exit 1

# 应用优化
opt -O2 linked.ll -o optimized.ll || exit 1

# 编译可执行文件
clang optimized.ll -o final_program -lm -lstdc++ || exit 1

rm -f ./*.ll
rm -f ./*.bc
# 验证结果
./final_program 
