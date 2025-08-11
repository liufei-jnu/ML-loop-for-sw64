; ModuleID = '../files/test/00202.c'
source_filename = "../files/test/00202.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"jim: %d, bob: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"jim: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 21, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 signext %7, i32 signext %8)
  store i32 63, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 signext %10)
  ret i32 0
}

declare dso_local signext i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 13.0.0 (/home/jnu_llvm/llvm13.0.0-sw1.0.3/clang d71fe53af59eb7ed76b7eb9cca109d7c41faaf1e)"}
