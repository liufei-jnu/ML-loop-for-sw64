; ModuleID = '/data/chengh/MLfortest/simple/project1/fib.c'
source_filename = "/data/chengh/MLfortest/simple/project1/fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @fib(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i64 1, i64* %2, align 8
  br label %31

15:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  store i64 1, i64* %5, align 8
  store i32 2, i32* %7, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %16, !llvm.loop !4

29:                                               ; preds = %16
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %14, %10
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
