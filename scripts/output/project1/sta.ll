; ModuleID = '/data/chengh/MLfortest/simple/project1/sta.c'
source_filename = "/data/chengh/MLfortest/simple/project1/sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Statistics = type { i32, i32, double, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_stats(%struct.Statistics* noalias sret(%struct.Statistics) align 8 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %1, i32** %4, align 8
  store i32 %2, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %63, %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %22
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %22
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %18, !llvm.loop !4

66:                                               ; preds = %18
  %67 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = load i32, i32* %5, align 4
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %69, %71
  %73 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %0, i32 0, i32 2
  store double %72, double* %73, align 8
  ret void
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
