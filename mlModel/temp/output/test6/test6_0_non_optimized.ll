; ModuleID = '../files/test/test6.c'
source_filename = "../files/test/test6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stack = type { i32, i32, [10 x i8], i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"Error: stack overflow. (x=%c)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__const.main.str = private unnamed_addr constant [12 x i8] c"B0011B00110\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_stack(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  store %struct.stack* %0, %struct.stack** %2, align 8
  %3 = load %struct.stack*, %struct.stack** %2, align 8
  %4 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = load %struct.stack*, %struct.stack** %2, align 8
  %6 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = load %struct.stack*, %struct.stack** %2, align 8
  %8 = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 2
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 10
  %10 = load %struct.stack*, %struct.stack** %2, align 8
  %11 = getelementptr inbounds %struct.stack, %struct.stack* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(%struct.stack* %0, i8 signext %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca i8, align 1
  store %struct.stack* %0, %struct.stack** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.stack*, %struct.stack** %3, align 8
  %6 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.stack*, %struct.stack** %3, align 8
  %9 = getelementptr inbounds %struct.stack, %struct.stack* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  call void @exit(i32 1) #5
  unreachable

17:                                               ; preds = %2
  %18 = load %struct.stack*, %struct.stack** %3, align 8
  %19 = getelementptr inbounds %struct.stack, %struct.stack* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %21, i8** %19, align 8
  %22 = load i8, i8* %4, align 1
  %23 = load %struct.stack*, %struct.stack** %3, align 8
  %24 = getelementptr inbounds %struct.stack, %struct.stack* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  store i8 %22, i8* %25, align 1
  %26 = load %struct.stack*, %struct.stack** %3, align 8
  %27 = getelementptr inbounds %struct.stack, %struct.stack* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %17
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  store %struct.stack* %0, %struct.stack** %2, align 8
  %3 = load %struct.stack*, %struct.stack** %2, align 8
  %4 = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.stack*, %struct.stack** %2, align 8
  %10 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %10, align 8
  %13 = load %struct.stack*, %struct.stack** %2, align 8
  %14 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stack(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  %3 = alloca i32, align 4
  store %struct.stack* %0, %struct.stack** %2, align 8
  store i32 9, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.stack*, %struct.stack** %2, align 8
  %7 = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 9, %8
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load %struct.stack*, %struct.stack** %2, align 8
  %13 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 2
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  br label %4, !llvm.loop !4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [12 x i8], align 1
  %4 = alloca %struct.stack, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast [12 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.main.str, i32 0, i32 0), i64 12, i1 false)
  call void @init_stack(%struct.stack* %4)
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %10 = call i64 @strlen(i8* %9) #6
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 66
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  call void @pop(%struct.stack* %4)
  br label %30

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void @push(%struct.stack* %4, i8 signext 48)
  br label %29

28:                                               ; preds = %20
  call void @push(%struct.stack* %4, i8 signext 49)
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %6, !llvm.loop !6

34:                                               ; preds = %6
  call void @print_stack(%struct.stack* %4)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
