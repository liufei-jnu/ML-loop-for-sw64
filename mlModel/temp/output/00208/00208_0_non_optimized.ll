; ModuleID = '../files/test/00208.c'
source_filename = "../files/test/00208.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wchar = type { i8*, [1 x i8] }
%struct.wint = type { i8*, [1 x i32] }

@__const.f1char.s = private unnamed_addr constant [9 x i8] c"nonono\00\00\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"bugs\00", align 1
@__const.f1char.q = private unnamed_addr constant %struct.wchar { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), [1 x i8] zeroinitializer }, align 8
@__const.f1int.s = private unnamed_addr constant [9 x i8] c"nonono\00\00\00", align 1
@__const.f1int.q = private unnamed_addr constant %struct.wint { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), [1 x i32] zeroinitializer }, align 8
@__const.main.s = private unnamed_addr constant [9 x i8] c"nonono\00\00\00", align 1
@main.q = internal global %struct.wchar { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), [1 x i8] c"c" }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bla\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f1char() #0 {
  %1 = alloca [9 x i8], align 1
  %2 = alloca %struct.wchar, align 8
  %3 = bitcast [9 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.f1char.s, i32 0, i32 0), i64 9, i1 false)
  %4 = bitcast %struct.wchar* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.wchar* @__const.f1char.q to i8*), i64 16, i1 false)
  %5 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f1int() #0 {
  %1 = alloca [9 x i8], align 1
  %2 = alloca %struct.wint, align 8
  %3 = bitcast [9 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.f1int.s, i32 0, i32 0), i64 9, i1 false)
  %4 = bitcast %struct.wint* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.wint* @__const.f1int.q to i8*), i64 16, i1 false)
  %5 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast [9 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.s, i32 0, i32 0), i64 9, i1 false)
  %4 = call i32 @f1char()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 @f1int()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
