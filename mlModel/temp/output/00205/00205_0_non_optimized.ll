; ModuleID = '../files/test/00205.c'
source_filename = "../files/test/00205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PT = type { [4 x i64], i64, i64, i64 }

@cases = dso_local global [9 x %struct.PT] [%struct.PT { [4 x i64] [i64 73400320, i64 262144, i64 805567999, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 262144, i64 262144, i64 805567999], i64 2, i64 3, i64 2 }, %struct.PT { [4 x i64] [i64 879754751, i64 805567999, i64 262144, i64 805567999], i64 1, i64 3, i64 2 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 524288, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 1048576, i64 805830143], i64 1, i64 3, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 262144, i64 262144], i64 1, i64 3, i64 1 }, %struct.PT { [4 x i64] [i64 73400320, i64 807403007, i64 807403007, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 839122431, i64 2097152, i64 807403007, i64 -1], i64 0, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 67108864, i64 807403007, i64 134217728, i64 -1], i64 0, i64 2, i64 0 }], align 16
@.str = private unnamed_addr constant [21 x i8] c"cases[%d].c[%d]=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cases[%d].b=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cases[%d].e=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cases[%d].k=%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 9
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %25, %8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [9 x %struct.PT], [9 x %struct.PT]* @cases, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.PT, %struct.PT* %18, i32 0, i32 0
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %19, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i64 %23)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %9, !llvm.loop !4

28:                                               ; preds = %9
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [9 x %struct.PT], [9 x %struct.PT]* @cases, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.PT, %struct.PT* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x %struct.PT], [9 x %struct.PT]* @cases, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.PT, %struct.PT* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %36, i64 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [9 x %struct.PT], [9 x %struct.PT]* @cases, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.PT, %struct.PT* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %43, i64 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %4, !llvm.loop !6

54:                                               ; preds = %4
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
