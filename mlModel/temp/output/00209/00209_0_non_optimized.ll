; ModuleID = '../files/test/00209.c'
source_filename = "../files/test/00209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type opaque

@e = dso_local global i32* null, align 8
@e1 = dso_local global i32* null, align 8
@e2 = dso_local global i32* null, align 8
@s = dso_local global %struct.S* null, align 8
@s1 = dso_local global %struct.S* null, align 8
@s2 = dso_local global %struct.S* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f1(i32 (...)* %0, i32 %1) #0 {
  %3 = alloca i32 (...)*, align 8
  %4 = alloca i32, align 4
  store i32 (...)* %0, i32 (...)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32 (...)*, i32 (...)** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = bitcast i32 (...)* %5 to i32 (i32, ...)*
  %8 = call i32 (i32, ...) %7(i32 %6)
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2(i32 (i32)* %0, i32 %1) #0 {
  %3 = alloca i32 (i32)*, align 8
  %4 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32 (i32)*, i32 (i32)** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 %5(i32 %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f3(i32 (i32)* %0, i32 %1) #0 {
  %3 = alloca i32 (i32)*, align 8
  %4 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32 (i32)*, i32 (i32)** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 %5(i32 %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f4(i32 (i32)** %0, i32 %1) #0 {
  %3 = alloca i32 (i32)**, align 8
  %4 = alloca i32, align 4
  store i32 (i32)** %0, i32 (i32)*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32 (i32)**, i32 (i32)*** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32 (i32)*, i32 (i32)** %5, i64 %7
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 %9(i32 %10)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f5(i32 (i32 (...)*)* %0, i32 (...)* %1) #0 {
  %3 = alloca i32 (i32 (...)*)*, align 8
  %4 = alloca i32 (...)*, align 8
  store i32 (i32 (...)*)* %0, i32 (i32 (...)*)** %3, align 8
  store i32 (...)* %1, i32 (...)** %4, align 8
  %5 = load i32 (i32 (...)*)*, i32 (i32 (...)*)** %3, align 8
  %6 = load i32 (...)*, i32 (...)** %4, align 8
  %7 = call i32 %5(i32 (...)* %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
