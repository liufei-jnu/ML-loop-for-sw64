; ModuleID = '../files/test/00214.c'
source_filename = "../files/test/00214.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_brk_start = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"wrong1\0A\00", align 1
@_brk_end = dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"wrong4\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"okay\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"wrong2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extend_brk(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = sub i64 %7, 1
  store i64 %8, i64* %5, align 8
  store i8* null, i8** %6, align 8
  br label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @_brk_start, align 8
  %11 = icmp eq i64 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %9
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* @_brk_end, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %5, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* @_brk_end, align 8
  %29 = load i64, i64* @_brk_end, align 8
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %6, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @_brk_end, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* @_brk_end, align 8
  %34 = load i8*, i8** %6, align 8
  ret i8* %34
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bla() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 42, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  call void @get_args(i32 %9, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_args(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @chk(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i1, i1* %4, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i64 1024, i64* @_brk_start, align 8
  store i64 1024, i64* @_brk_end, align 8
  %3 = call i8* @extend_brk(i64 4096, i64 16)
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %6
  call void @bla()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
