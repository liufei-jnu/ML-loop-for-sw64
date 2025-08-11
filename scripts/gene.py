import itertools

# 定义所有可直接通过 -f/-fno 控制的优化选项（Clang 13兼容）
base_options = [
    "unroll-loops",            # -funroll-loops / -fno-unroll-loops
    "vectorize",               # -fvectorize / -fno-vectorize
    "inline-functions",        # -finline-functions / -fno-inline-functions
    "optimize-sibling-calls",  # -foptimize-sibling-calls / -fno-optimize-sibling-calls
    "delete-null-pointer-checks",  # -fdelete-null-pointer-checks / -fno-delete-null-pointer-checks
    "merge-all-constants",     # -fmerge-all-constants / -fno-merge-all-constants
    "associative-math",        # -fassociative-math / -fno-associative-math
    "reciprocal-math"          # -freciprocal-math / -fno-reciprocal-math
]

# 为每个选项生成两种可能: -f选项 和 -fno-选项
option_variants = []
for opt in base_options:
    option_variants.append([f"-f{opt}", f"-fno-{opt}"])

# 生成所有可能的组合（笛卡尔积）
all_combinations = itertools.product(*option_variants)

# 将所有组合写入文件
with open('optimization_permutations.txt', 'w') as txtfile:
    for combo in all_combinations:
        txtfile.write(' '.join(combo) + '\n')

print(f"已生成 {2**len(base_options)} 种组合（共 256 种）并保存到 optimization_permutations.txt")
