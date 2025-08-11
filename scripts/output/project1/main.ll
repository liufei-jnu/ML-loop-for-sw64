; ModuleID = '/data/chengh/MLfortest/simple/project1/main.c'
source_filename = "/data/chengh/MLfortest/simple/project1/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Statistics = type { i32, i32, double, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Fibonacci(%d) = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\E5\B0\8F\E4\BA\8E %d \E7\9A\84\E7\B4\A0\E6\95\B0\E5\85\B1\E6\9C\89 %d \E4\B8\AA\EF\BC\9A\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.data = private unnamed_addr constant [8 x i32] [i32 10, i32 23, i32 45, i32 67, i32 89, i32 12, i32 56, i32 34], align 16
@.str.4 = private unnamed_addr constant [23 x i8] c"\E7\BB\9F\E8\AE\A1\E6\95\B0\E6\8D\AE\E7\BB\93\E6\9E\9C\EF\BC\9A\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\E6\80\BB\E6\95\B0: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\E6\80\BB\E5\92\8C: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\E5\B9\B3\E5\9D\87\E5\80\BC: %.2f\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\E6\9C\80\E5\A4\A7\E5\80\BC: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\E6\9C\80\E5\B0\8F\E5\80\BC: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.Statistics, align 8
  store i32 0, i32* %1, align 4
  store i32 75, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @fib(i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %12)
  store i32 100, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @sieve_of_eratosthenes(i32 %14, i32** %4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %30, %0
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %19, !llvm.loop !4

33:                                               ; preds = %19
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36)
  %37 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([8 x i32]* @__const.main.data to i8*), i64 32, i1 false)
  store i32 8, i32* %8, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* %8, align 4
  call void @calculate_stats(%struct.Statistics* sret(%struct.Statistics) align 8 %9, i32* %38, i32 %39)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %9, i32 0, i32 2
  %48 = load double, double* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), double %48)
  %50 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %9, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.Statistics, %struct.Statistics* %9, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %54)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @fib(i32) #1

declare dso_local i32 @sieve_of_eratosthenes(i32, i32**) #1

declare dso_local void @free(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @calculate_stats(%struct.Statistics* sret(%struct.Statistics) align 8, i32*, i32) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
