; ModuleID = '../files/test/test5.c'
source_filename = "../files/test/test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 231, i32* %6, align 4
  store i32 2350, i32* %7, align 4
  store i32 13, i32* %8, align 4
  store i32 23, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sitofp i32 %12 to float
  %14 = load i32, i32* %7, align 4
  %15 = sitofp i32 %14 to float
  %16 = fmul float %13, %15
  %17 = fpext float %16 to double
  %18 = fdiv double %17, 2.000000e+00
  %19 = fptrunc double %18 to float
  store float %19, float* %11, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %0
  %24 = load i32, i32* %7, align 4
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 2
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 2
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %32, %27
  br label %39

39:                                               ; preds = %38, %23, %0
  %40 = load float, float* %11, align 4
  %41 = fpext float %40 to double
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
