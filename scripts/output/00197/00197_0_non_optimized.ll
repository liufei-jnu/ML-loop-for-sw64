; ModuleID = '/home/jnu_llvm/MLfortest/files/simple/00197.c'
source_filename = "/home/jnu_llvm/MLfortest/files/simple/00197.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

@henry.fred = internal global i32 4567, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fred = internal global i32 1234, align 4
@joe = internal global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local void @henry() #0 {
  %1 = load i32, i32* @henry.fred, align 4
  %2 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 signext %1)
  %3 = load i32, i32* @henry.fred, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @henry.fred, align 4
  ret void
}

declare dso_local signext i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @fred, align 4
  %3 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 signext %2)
  call void @henry()
  call void @henry()
  call void @henry()
  call void @henry()
  %4 = load i32, i32* @fred, align 4
  %5 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 signext %4)
  store i32 8901, i32* @fred, align 4
  store i32 2345, i32* @joe, align 4
  %6 = load i32, i32* @fred, align 4
  %7 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 signext %6)
  %8 = load i32, i32* @joe, align 4
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 signext %8)
  ret i32 0
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 13.0.0 (/home/jnu_llvm/llvm13.0.0-sw1.0.3/clang d71fe53af59eb7ed76b7eb9cca109d7c41faaf1e)"}
