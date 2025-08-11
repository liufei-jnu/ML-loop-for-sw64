; ModuleID = '../files/test/00203.c'
source_filename = "../files/test/00203.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Error: 0 < -2147483648\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Error: 2147483647 < 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"long long constant test ok.\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, -2147483648
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %16

7:                                                ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp slt i64 2147483647, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %1, align 4
  br label %16

12:                                               ; preds = %7
  %13 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %10, %5
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local signext i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 13.0.0 (/home/jnu_llvm/llvm13.0.0-sw1.0.3/clang d71fe53af59eb7ed76b7eb9cca109d7c41faaf1e)"}
