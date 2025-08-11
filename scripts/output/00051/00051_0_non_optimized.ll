; ModuleID = '/home/jnu_llvm/MLfortest/files/simple/00051.c'
source_filename = "/home/jnu_llvm/MLfortest/files/simple/00051.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

@x = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @x, align 4
  switch i32 %2, label %4 [
    i32 0, label %3
  ]

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @x, align 4
  switch i32 %5, label %10 [
    i32 0, label %6
  ]

6:                                                ; preds = %4
  %7 = load i32, i32* @x, align 4
  switch i32 %7, label %9 [
    i32 0, label %8
  ]

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  store i32 1, i32* %1, align 4
  br label %24

10:                                               ; preds = %4
  store i32 1, i32* %1, align 4
  br label %24

11:                                               ; preds = %8
  %12 = load i32, i32* @x, align 4
  switch i32 %12, label %14 [
    i32 1, label %13
  ]

13:                                               ; preds = %11
  store i32 1, i32* %1, align 4
  br label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @x, align 4
  switch i32 %15, label %18 [
    i32 1, label %17
  ]

16:                                               ; No predecessors!
  br label %17

17:                                               ; preds = %14, %16
  store i32 1, i32* %1, align 4
  br label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @x, align 4
  switch i32 %19, label %23 [
    i32 0, label %20
    i32 1, label %22
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @x, align 4
  store i32 %21, i32* %1, align 4
  br label %24

22:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %24

23:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %22, %20, %17, %13, %10, %9
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 13.0.0 (/home/jnu_llvm/llvm13.0.0-sw1.0.3/clang d71fe53af59eb7ed76b7eb9cca109d7c41faaf1e)"}
