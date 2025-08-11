; ModuleID = '../files/test/toy.c'
source_filename = "../files/test/toy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Should Not Be Printed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @never_executed() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iAdd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fAdd(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fadd float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [200 x i32], align 16
  %3 = alloca [200 x i32], align 16
  %4 = alloca [200 x float], align 16
  %5 = alloca [200 x float], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [200 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 800, i1 false)
  %8 = bitcast [200 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 800, i1 false)
  %9 = bitcast i8* %8 to <{ i32, [199 x i32] }>*
  %10 = getelementptr inbounds <{ i32, [199 x i32] }>, <{ i32, [199 x i32] }>* %9, i32 0, i32 0
  store i32 1, i32* %10, align 16
  %11 = bitcast [200 x float]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 800, i1 false)
  %12 = bitcast i8* %11 to <{ float, [199 x float] }>*
  %13 = getelementptr inbounds <{ float, [199 x float] }>, <{ float, [199 x float] }>* %12, i32 0, i32 0
  store float 0x3FB99999A0000000, float* %13, align 16
  %14 = bitcast [200 x float]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 800, i1 false)
  %15 = bitcast i8* %14 to <{ float, [199 x float] }>*
  %16 = getelementptr inbounds <{ float, [199 x float] }>, <{ float, [199 x float] }>* %15, i32 0, i32 0
  store float 0x40099999A0000000, float* %16, align 16
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %55, %0
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 200
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sitofp i32 %21 to double
  %23 = fcmp olt double %22, 1.600000e+02
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [200 x float], [200 x float]* %4, i64 0, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [200 x float], [200 x float]* %5, i64 0, i64 %30
  %32 = load float, float* %31, align 4
  %33 = call float @fAdd(float %28, float %32)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [200 x float], [200 x float]* %5, i64 0, i64 %35
  store float %33, float* %36, align 4
  br label %37

37:                                               ; preds = %24, %20
  %38 = load i32, i32* %6, align 4
  %39 = sitofp i32 %38 to double
  %40 = fcmp olt double %39, 6.000000e+01
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [200 x i32], [200 x i32]* %2, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [200 x i32], [200 x i32]* %3, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iAdd(i32 %45, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [200 x i32], [200 x i32]* %3, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %41, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %17, !llvm.loop !4

58:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
