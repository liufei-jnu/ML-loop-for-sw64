; ModuleID = '../files/test/00201.c'
source_filename = "../files/test/00201.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 42, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 signext %3)
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
