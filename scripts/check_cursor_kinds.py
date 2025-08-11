from clang.cindex import CursorKind

print("Available CursorKind values:")
for name in dir(CursorKind):
    if not name.startswith("_"):
        print(f"{name}")
