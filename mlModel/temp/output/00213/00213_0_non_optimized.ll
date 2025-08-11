; ModuleID = '../files/test/00213.c'
source_filename = "../files/test/00213.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"yeah\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"boo\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"once\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"twice\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SEonce\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SEtwice\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"once2\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"twice2\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"once3\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"twice3\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"error2\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"caseok\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"error3\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"caseok2\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"error4\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"timeout=%ld\0A\00", align 1
@global = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"check %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  call void @kb_wait_1()
  br i1 false, label %5, label %8

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %14, %5
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %2, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %6

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br i1 false, label %16, label %26

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %2, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %29, %21
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %17, !llvm.loop !4

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* %2, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %23

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br i1 false, label %31, label %41

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %44, %36
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %32, !llvm.loop !6

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %3, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %38

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %2, align 4
  br i1 false, label %48, label %58

48:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %55, %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %2, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %61, %53
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %49, !llvm.loop !7

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %2, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %55

62:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br i1 false, label %63, label %73

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %68, %63
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %76, %64
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %2, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %64, label %72, !llvm.loop !8

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %2, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %66

77:                                               ; preds = %73
  store i32 41, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  switch i32 %78, label %87 [
    i32 42, label %82
    i32 41, label %84
  ]

79:                                               ; No predecessors!
  br i1 false, label %80, label %86

80:                                               ; preds = %79
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %80
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %84

84:                                               ; preds = %77, %82
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  br label %87

87:                                               ; preds = %86, %77
  store i32 41, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  switch i32 %88, label %92 [
    i32 42, label %94
  ]

89:                                               ; No predecessors!
  br i1 false, label %90, label %96

90:                                               ; preds = %89
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %90
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %97

94:                                               ; preds = %87
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %92
  call void @dowhile()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kb_wait_1() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 2, i64* %1, align 8
  br label %3

3:                                                ; preds = %21, %0
  br i1 true, label %4, label %7

4:                                                ; preds = %3
  %5 = load i64, i64* %1, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 %5)
  br label %18

7:                                                ; preds = %3
  store i32 1, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %16
  br label %9

9:                                                ; preds = %14, %8
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %2, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %9, !llvm.loop !9

16:                                               ; preds = %9
  br label %8

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %1, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %3, label %24, !llvm.loop !10

24:                                               ; preds = %21
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dowhile() #0 {
  br label %1

1:                                                ; preds = %11, %0
  call void @foo(i32 1)
  %2 = load i32, i32* @global, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @global, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %11

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  br label %14

11:                                               ; preds = %8, %4
  %12 = call i32 @check()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %1, label %14, !llvm.loop !11

14:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @foo(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @global, align 4
  %5 = add nsw i32 %4, %3
  store i32 %5, i32* @global, align 4
  %6 = load i32, i32* @global, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check() #0 {
  %1 = load i32, i32* @global, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %1)
  ret i32 1
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
!11 = distinct !{!11, !5}
