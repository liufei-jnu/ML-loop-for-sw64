; ModuleID = '../files/test/00215.c'
source_filename = "../files/test/00215.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"begin\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"timeout=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  call void @kb_wait_1()
  call void @kb_wait_2()
  call void @kb_wait_2_1()
  call void @kb_wait_2_2()
  call void @kb_wait_3()
  call void @kb_wait_4()
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_1() #0 {
  %1 = alloca i64, align 8
  store i64 2, i64* %1, align 8
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i64, i64* %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* %1, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %2, label %10, !llvm.loop !4

10:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_2() #0 {
  %1 = alloca i64, align 8
  store i64 2, i64* %1, align 8
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i64, i64* %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* %1, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %2, label %10, !llvm.loop !6

10:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_2_1() #0 {
  %1 = alloca i64, align 8
  store i64 2, i64* %1, align 8
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i64, i64* %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* %1, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %2, label %10, !llvm.loop !7

10:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_2_2() #0 {
  %1 = alloca i64, align 8
  store i64 2, i64* %1, align 8
  br label %2

2:                                                ; preds = %12, %0
  br i1 true, label %3, label %6

3:                                                ; preds = %2
  %4 = load i64, i64* %1, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %4)
  br label %9

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %7, %6
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %7

9:                                                ; preds = %3
  %10 = load i64, i64* %1, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %1, align 8
  br label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %2, label %15, !llvm.loop !8

15:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_3() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 2, i64* %1, align 8
  br label %3

3:                                                ; preds = %14, %0
  br i1 true, label %4, label %7

4:                                                ; preds = %3
  %5 = load i64, i64* %1, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %5)
  br label %11

7:                                                ; preds = %3
  store i32 1, i32* %2, align 4
  br label %8

8:                                                ; preds = %7
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 3
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %3, label %17, !llvm.loop !9

17:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_4() #0 {
  %1 = alloca i64, align 8
  store i64 2, i64* %1, align 8
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i64, i64* %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* %1, align 8
  %6 = add i64 %5, -1
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %2, label %10, !llvm.loop !10

10:                                               ; preds = %7
  ret void
}

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
