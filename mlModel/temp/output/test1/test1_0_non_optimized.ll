; ModuleID = '../files/test/test1.c'
source_filename = "../files/test/test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1200212, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sdiv i32 %4, 100
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 900, i32* %3, align 4
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, i32* %2, align 4
  %10 = sdiv i32 %9, 100
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 100, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 10
  %16 = srem i32 %15, 10
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 90
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %2, align 4
  %23 = sdiv i32 %22, 10
  %24 = srem i32 %23, 10
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 10
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %2, align 4
  %31 = srem i32 %30, 10
  %32 = srem i32 %31, 10
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 9
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %2, align 4
  %39 = srem i32 %38, 10
  %40 = srem i32 %39, 10
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46)
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
