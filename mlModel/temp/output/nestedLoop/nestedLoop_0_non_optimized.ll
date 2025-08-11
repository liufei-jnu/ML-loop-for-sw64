; ModuleID = '../files/test/nestedLoop.c'
source_filename = "../files/test/nestedLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %41, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %17, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %11, !llvm.loop !4

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %33, %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %27, !llvm.loop !6

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %3, align 4
  br label %21, !llvm.loop !7

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %7, !llvm.loop !8

44:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 5
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %55, %48
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %49, !llvm.loop !9

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 5
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %71, %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %65, !llvm.loop !10

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %3, align 4
  br label %59, !llvm.loop !11

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %45, !llvm.loop !12

82:                                               ; preds = %45
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!12 = distinct !{!12, !5}
