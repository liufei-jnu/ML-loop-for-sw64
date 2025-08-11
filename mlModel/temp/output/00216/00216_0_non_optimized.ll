; ModuleID = '../files/test/00216.c'
source_filename = "../files/test/00216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.contains_empty = type { i8, %struct.empty_s, i8 }
%struct.empty_s = type {}
%struct.SS = type { [3 x i8], i8 }
%struct.S = type { i8, i8, [2 x i8] }
%struct.T = type { [16 x i8], i8 }
%struct.U = type { i8, %struct.S, i8, %struct.T }
%struct.V = type { %struct.S, %struct.T, i8 }
%struct.SU = type { %union.UU, i8 }
%union.UU = type { i8 }
%struct.anon = type { i8, i8 }
%struct.Wrap = type { i8* }
%struct.SEB = type { %struct.SEA, [1 x i32] }
%struct.SEA = type { i32, i32, i32, i32 }
%struct.SEC = type { %struct.SEA, [0 x i32] }
%struct.SED = type { %struct.SEA, [0 x i32] }
%struct.W = type { %struct.V, [0 x %struct.S] }
%struct.pkthdr = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [8 x i16] }
%struct.flowi6 = type { %struct.in6_addr, %struct.in6_addr }

@ce = dso_local global %struct.contains_empty { i8 1, %struct.empty_s undef, i8 18 }, align 1
@sinit16 = dso_local global [2 x %struct.SS] [%struct.SS { [3 x i8] c"\01\00\00", i8 0 }, %struct.SS { [3 x i8] c"\02\00\00", i8 0 }], align 1
@gs = dso_local global %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, align 1
@gs2 = dso_local global %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, align 1
@gt = dso_local global %struct.T { [16 x i8] c"hello\00\00\00\00\00\00\00\00\00\00\00", i8 42 }, align 1
@gu = dso_local global %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\08" }, i8 4, %struct.T { [16 x i8] c"huhu\00\00\00\00\00\00\00\00\00\00\00\00", i8 43 } }, align 1
@gu2 = dso_local global %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\08" }, i8 4, %struct.T { [16 x i8] c"huhu\00\00\00\00\00\00\00\00\00\00\00\00", i8 43 } }, align 1
@gu3 = dso_local global %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\08" }, i8 4, %struct.T { [16 x i8] c"huhu\00\00\00\00\00\00\00\00\00\00\00\00", i8 43 } }, align 1
@gu4 = dso_local global %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\00" }, i8 5, %struct.T { [16 x i8] c"bla\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 44 } }, align 1
@gs3 = dso_local global %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, align 1
@gv = dso_local global %struct.V { %struct.S { i8 3, i8 4, [2 x i8] c"\05\06" }, %struct.T { [16 x i8] c"haha\00\00\00\00\00\00\00\00\00\00\00\00", i8 45 }, i8 46 }, align 1
@gv2 = dso_local global %struct.V { %struct.S { i8 7, i8 8, [2 x i8] c"\09\0A" }, %struct.T { [16 x i8] c"hihi\00\00\00\00\00\00\00\00\00\00\00\00", i8 47 }, i8 48 }, align 1
@gv3 = dso_local global %struct.V { %struct.S { i8 7, i8 8, [2 x i8] c"\09\0A" }, %struct.T { [16 x i8] c"hoho\00\00\00\00\00\00\00\00\00\00\00\00", i8 49 }, i8 50 }, align 1
@gw = dso_local global { %struct.V, [2 x %struct.S] } { %struct.V { %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, %struct.T zeroinitializer, i8 0 }, [2 x %struct.S] [%struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, %struct.S { i8 5, i8 0, [2 x i8] zeroinitializer }] }, align 1
@gsu = dso_local global %struct.SU { %union.UU { i8 5 }, i8 6 }, align 1
@guv = dso_local global { %struct.anon, [2 x i8] } { %struct.anon { i8 6, i8 5 }, [2 x i8] undef }, align 1
@guv2 = dso_local global { %struct.anon, [2 x i8] } { %struct.anon { i8 8, i8 7 }, [2 x i8] undef }, align 1
@guv3 = dso_local global { %struct.anon, [2 x i8] } { %struct.anon { i8 7, i8 8 }, [2 x i8] undef }, align 1
@phdr = dso_local global { { { <{ i8, i8, i8, i8, [12 x i8] }> } }, { { <{ i8, i8, i8, i8, [12 x i8] }> } } } { { { <{ i8, i8, i8, i8, [12 x i8] }> } } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 6, i8 5, i8 4, i8 3, [12 x i8] zeroinitializer }> } }, { { <{ i8, i8, i8, i8, [12 x i8] }> } } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 9, i8 8, i8 7, i8 6, [12 x i8] zeroinitializer }> } } }, align 2
@global = dso_local global i32 0, align 4
@global_wrap = dso_local global [2 x %struct.Wrap] [%struct.Wrap { i8* bitcast (void ()* @inc_global to i8*) }, %struct.Wrap { i8* bitcast (void ()* @inc_global to i8*) }], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.foo.ls = private unnamed_addr constant %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, align 1
@__const.foo.ls2 = private unnamed_addr constant %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, align 1
@__const.foo.lt = private unnamed_addr constant %struct.T { [16 x i8] c"hello\00\00\00\00\00\00\00\00\00\00\00", i8 42 }, align 1
@__const.foo.lu = private unnamed_addr constant %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\08" }, i8 4, %struct.T { [16 x i8] c"huhu\00\00\00\00\00\00\00\00\00\00\00\00", i8 43 } }, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"huhu\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@__const.foo.lu3 = private unnamed_addr constant %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\08" }, i8 4, %struct.T { [16 x i8] c"huhu\00\00\00\00\00\00\00\00\00\00\00\00", i8 43 } }, align 1
@__const.foo.lu4 = private unnamed_addr constant %struct.U { i8 3, %struct.S { i8 5, i8 6, [2 x i8] c"\07\00" }, i8 5, %struct.T { [16 x i8] c"bla\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 44 } }, align 1
@__const.foo.ls3 = private unnamed_addr constant %struct.S { i8 1, i8 2, [2 x i8] c"\03\04" }, align 1
@__const.foo.lv = private unnamed_addr constant %struct.V { %struct.S { i8 3, i8 4, [2 x i8] c"\05\06" }, %struct.T { [16 x i8] c"haha\00\00\00\00\00\00\00\00\00\00\00\00", i8 45 }, i8 46 }, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"hihi\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ls2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lu1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"lu2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ls21\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"lu21\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"lu22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"lu3\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"lu4\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ls3\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"lv\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"lv2\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"lv3\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"lt2\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@__const.test_compound_with_relocs.local_wrap = private unnamed_addr constant [2 x %struct.Wrap] [%struct.Wrap { i8* bitcast (void ()* @inc_global to i8*) }, %struct.Wrap { i8* bitcast (void ()* @inc_global to i8*) }], align 16
@.str.22 = private unnamed_addr constant [4 x i8] c"ni\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"one\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"two\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"three\0A\00", align 1
@table = dso_local constant [3 x void ()*] [void ()* @sys_one, void ()* @sys_two, void ()* @sys_three], align 16
@__const.test_zero_init.b = private unnamed_addr constant %struct.SEB { %struct.SEA { i32 0, i32 5, i32 0, i32 0 }, [1 x i32] zeroinitializer }, align 4
@__const.test_zero_init.c = private unnamed_addr constant %struct.SEC { %struct.SEA { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4
@__const.test_zero_init.d = private unnamed_addr constant %struct.SED { %struct.SEA { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"gs\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"gs2\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"gu\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"gu2\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"gu3\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"gu4\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"gs3\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"gv\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"gv2\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"gv3\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sinit16\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"gw\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"gsu\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"guv\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"guv.b\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"guv2\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"guv3\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"phdr\00", align 1
@test_correct_filling.i = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [19 x i8] c"sea_fill%d: wrong\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"sea_fill%d: okay\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inc_global() #0 {
  %1 = load i32, i32* @global, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @global, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %6, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %14, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %9, !llvm.loop !4

19:                                               ; preds = %9
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(%struct.W* %0, %struct.pkthdr* %1) #0 {
  %3 = alloca %struct.W*, align 8
  %4 = alloca %struct.pkthdr*, align 8
  %5 = alloca %struct.S, align 1
  %6 = alloca %struct.S, align 1
  %7 = alloca %struct.T, align 1
  %8 = alloca %struct.U, align 1
  %9 = alloca %struct.U, align 1
  %10 = alloca %struct.U, align 1
  %11 = alloca %struct.S*, align 8
  %12 = alloca %struct.S, align 1
  %13 = alloca %struct.U, align 1
  %14 = alloca %struct.U, align 1
  %15 = alloca %struct.U, align 1
  %16 = alloca %struct.U, align 1
  %17 = alloca %struct.S, align 1
  %18 = alloca %struct.V, align 1
  %19 = alloca %struct.V, align 1
  %20 = alloca %struct.V, align 1
  %21 = alloca %struct.pkthdr*, align 8
  %22 = alloca %struct.flowi6, align 2
  %23 = alloca i32, align 4
  %24 = alloca %struct.T, align 1
  store %struct.W* %0, %struct.W** %3, align 8
  store %struct.pkthdr* %1, %struct.pkthdr** %4, align 8
  %25 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @__const.foo.ls, i32 0, i32 0), i64 4, i1 false)
  %26 = bitcast %struct.S* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @__const.foo.ls2, i32 0, i32 0), i64 4, i1 false)
  %27 = bitcast %struct.T* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds (%struct.T, %struct.T* @__const.foo.lt, i32 0, i32 0, i32 0), i64 17, i1 false)
  %28 = bitcast %struct.U* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds (%struct.U, %struct.U* @__const.foo.lu, i32 0, i32 0), i64 23, i1 false)
  %29 = getelementptr inbounds %struct.U, %struct.U* %9, i32 0, i32 0
  store i8 3, i8* %29, align 1
  %30 = getelementptr inbounds %struct.U, %struct.U* %9, i32 0, i32 1
  %31 = bitcast %struct.S* %30 to i8*
  %32 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %struct.U, %struct.U* %9, i32 0, i32 2
  store i8 4, i8* %33, align 1
  %34 = getelementptr inbounds %struct.U, %struct.U* %9, i32 0, i32 3
  %35 = getelementptr inbounds %struct.T, %struct.T* %34, i32 0, i32 0
  %36 = bitcast [16 x i8]* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 16, i1 false)
  %37 = getelementptr inbounds %struct.T, %struct.T* %34, i32 0, i32 1
  store i8 43, i8* %37, align 1
  %38 = getelementptr inbounds %struct.U, %struct.U* %10, i32 0, i32 0
  store i8 3, i8* %38, align 1
  %39 = getelementptr inbounds %struct.U, %struct.U* %10, i32 0, i32 1
  %40 = bitcast %struct.S* %39 to i8*
  %41 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.U, %struct.U* %10, i32 0, i32 2
  store i8 4, i8* %42, align 1
  %43 = getelementptr inbounds %struct.U, %struct.U* %10, i32 0, i32 3
  %44 = getelementptr inbounds %struct.T, %struct.T* %43, i32 0, i32 0
  %45 = bitcast [16 x i8]* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 16, i1 false)
  %46 = getelementptr inbounds %struct.T, %struct.T* %43, i32 0, i32 1
  store i8 43, i8* %46, align 1
  store %struct.S* %5, %struct.S** %11, align 8
  %47 = load %struct.S*, %struct.S** %11, align 8
  %48 = bitcast %struct.S* %12 to i8*
  %49 = bitcast %struct.S* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 %49, i64 4, i1 false)
  %50 = getelementptr inbounds %struct.U, %struct.U* %13, i32 0, i32 0
  store i8 3, i8* %50, align 1
  %51 = getelementptr inbounds %struct.U, %struct.U* %13, i32 0, i32 1
  %52 = load %struct.S*, %struct.S** %11, align 8
  %53 = bitcast %struct.S* %51 to i8*
  %54 = bitcast %struct.S* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 %54, i64 4, i1 false)
  %55 = getelementptr inbounds %struct.U, %struct.U* %13, i32 0, i32 2
  store i8 4, i8* %55, align 1
  %56 = getelementptr inbounds %struct.U, %struct.U* %13, i32 0, i32 3
  %57 = getelementptr inbounds %struct.T, %struct.T* %56, i32 0, i32 0
  %58 = bitcast [16 x i8]* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 16, i1 false)
  %59 = getelementptr inbounds %struct.T, %struct.T* %56, i32 0, i32 1
  store i8 43, i8* %59, align 1
  %60 = getelementptr inbounds %struct.U, %struct.U* %14, i32 0, i32 0
  store i8 3, i8* %60, align 1
  %61 = getelementptr inbounds %struct.U, %struct.U* %14, i32 0, i32 1
  %62 = bitcast %struct.S* %61 to i8*
  %63 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 4, i1 false)
  %64 = getelementptr inbounds %struct.U, %struct.U* %14, i32 0, i32 2
  store i8 4, i8* %64, align 1
  %65 = getelementptr inbounds %struct.U, %struct.U* %14, i32 0, i32 3
  %66 = getelementptr inbounds %struct.T, %struct.T* %65, i32 0, i32 0
  %67 = bitcast [16 x i8]* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64 16, i1 false)
  %68 = getelementptr inbounds %struct.T, %struct.T* %65, i32 0, i32 1
  store i8 43, i8* %68, align 1
  %69 = bitcast %struct.U* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 getelementptr inbounds (%struct.U, %struct.U* @__const.foo.lu3, i32 0, i32 0), i64 23, i1 false)
  %70 = bitcast %struct.U* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 getelementptr inbounds (%struct.U, %struct.U* @__const.foo.lu4, i32 0, i32 0), i64 23, i1 false)
  %71 = bitcast %struct.S* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @__const.foo.ls3, i32 0, i32 0), i64 4, i1 false)
  %72 = bitcast %struct.V* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %72, i8* align 1 getelementptr inbounds (%struct.V, %struct.V* @__const.foo.lv, i32 0, i32 0, i32 0), i64 22, i1 false)
  %73 = getelementptr inbounds %struct.V, %struct.V* %19, i32 0, i32 0
  %74 = load %struct.W*, %struct.W** %3, align 8
  %75 = getelementptr inbounds %struct.W, %struct.W* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.V, %struct.V* %75, i32 0, i32 0
  %77 = bitcast %struct.S* %73 to i8*
  %78 = bitcast %struct.S* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 4, i1 false)
  %79 = getelementptr inbounds %struct.V, %struct.V* %19, i32 0, i32 1
  %80 = getelementptr inbounds %struct.T, %struct.T* %79, i32 0, i32 0
  %81 = bitcast [16 x i8]* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %81, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i64 16, i1 false)
  %82 = getelementptr inbounds %struct.T, %struct.T* %79, i32 0, i32 1
  store i8 47, i8* %82, align 1
  %83 = getelementptr inbounds %struct.V, %struct.V* %19, i32 0, i32 2
  store i8 48, i8* %83, align 1
  %84 = getelementptr inbounds %struct.V, %struct.V* %20, i32 0, i32 0
  %85 = getelementptr inbounds %struct.S, %struct.S* %84, i32 0, i32 0
  store i8 7, i8* %85, align 1
  %86 = getelementptr inbounds %struct.S, %struct.S* %84, i32 0, i32 1
  store i8 8, i8* %86, align 1
  %87 = getelementptr inbounds %struct.S, %struct.S* %84, i32 0, i32 2
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %87, i64 0, i64 0
  store i8 9, i8* %88, align 1
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 10, i8* %89, align 1
  %90 = getelementptr inbounds %struct.V, %struct.V* %20, i32 0, i32 1
  %91 = load %struct.W*, %struct.W** %3, align 8
  %92 = getelementptr inbounds %struct.W, %struct.W* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.V, %struct.V* %92, i32 0, i32 1
  %94 = bitcast %struct.T* %90 to i8*
  %95 = bitcast %struct.T* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %94, i8* align 1 %95, i64 17, i1 false)
  %96 = getelementptr inbounds %struct.V, %struct.V* %20, i32 0, i32 2
  store i8 50, i8* %96, align 1
  %97 = load %struct.pkthdr*, %struct.pkthdr** %4, align 8
  store %struct.pkthdr* %97, %struct.pkthdr** %21, align 8
  %98 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %22, i32 0, i32 0
  %99 = load %struct.pkthdr*, %struct.pkthdr** %21, align 8
  %100 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %99, i32 0, i32 1
  %101 = bitcast %struct.in6_addr* %98 to i8*
  %102 = bitcast %struct.in6_addr* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %101, i8* align 2 %102, i64 16, i1 false)
  %103 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %22, i32 0, i32 1
  %104 = load %struct.pkthdr*, %struct.pkthdr** %21, align 8
  %105 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %104, i32 0, i32 0
  %106 = bitcast %struct.in6_addr* %103 to i8*
  %107 = bitcast %struct.in6_addr* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %106, i8* align 2 %107, i64 16, i1 false)
  store i32 66, i32* %23, align 4
  %108 = getelementptr inbounds %struct.T, %struct.T* %24, i32 0, i32 0
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %108, i64 0, i64 0
  store i8 0, i8* %109, align 1
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 9, i8* %110, align 1
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 9, i8* %111, align 1
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 9, i8* %112, align 1
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i32, i32* %23, align 4
  %115 = add nsw i32 %114, 1
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %113, align 1
  %117 = getelementptr inbounds i8, i8* %113, i64 1
  %118 = load i32, i32* %23, align 4
  %119 = add nsw i32 %118, 1
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %117, align 1
  %121 = getelementptr inbounds i8, i8* %117, i64 1
  %122 = load i32, i32* %23, align 4
  %123 = add nsw i32 %122, 1
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %121, align 1
  %125 = getelementptr inbounds i8, i8* %121, i64 1
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 1
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %125, align 1
  %129 = getelementptr inbounds i8, i8* %125, i64 1
  %130 = load i32, i32* %23, align 4
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %129, align 1
  %132 = getelementptr inbounds i8, i8* %129, i64 1
  %133 = load i32, i32* %23, align 4
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %132, align 1
  %135 = getelementptr inbounds i8, i8* %132, i64 1
  %136 = load i32, i32* %23, align 4
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %135, align 1
  %138 = getelementptr inbounds i8, i8* %135, i64 1
  %139 = getelementptr inbounds i8, i8* %109, i64 16
  br label %140

140:                                              ; preds = %140, %2
  %141 = phi i8* [ %138, %2 ], [ %142, %140 ]
  store i8 0, i8* %141, align 1
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = icmp eq i8* %142, %139
  br i1 %143, label %144, label %140

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.T, %struct.T* %24, i32 0, i32 1
  store i8 1, i8* %145, align 1
  %146 = bitcast %struct.S* %5 to i8*
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %146, i64 4)
  %147 = bitcast %struct.S* %6 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %147, i64 4)
  %148 = bitcast %struct.T* %7 to i8*
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %148, i64 17)
  %149 = bitcast %struct.U* %8 to i8*
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %149, i64 23)
  %150 = bitcast %struct.U* %9 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %150, i64 23)
  %151 = bitcast %struct.U* %10 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %151, i64 23)
  %152 = bitcast %struct.S* %12 to i8*
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %152, i64 4)
  %153 = bitcast %struct.U* %14 to i8*
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %153, i64 23)
  %154 = bitcast %struct.U* %13 to i8*
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %154, i64 23)
  %155 = bitcast %struct.U* %15 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %155, i64 23)
  %156 = bitcast %struct.U* %16 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %156, i64 23)
  %157 = bitcast %struct.S* %17 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %157, i64 4)
  %158 = bitcast %struct.V* %18 to i8*
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %158, i64 22)
  %159 = bitcast %struct.V* %19 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %159, i64 22)
  %160 = bitcast %struct.V* %20 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %160, i64 22)
  %161 = bitcast %struct.T* %24 to i8*
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %161, i64 17)
  %162 = bitcast %struct.flowi6* %22 to i8*
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %162, i64 32)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_compound_with_relocs() #0 {
  %1 = alloca [2 x %struct.Wrap], align 16
  %2 = alloca void ()*, align 8
  %3 = bitcast [2 x %struct.Wrap]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([2 x %struct.Wrap]* @__const.test_compound_with_relocs.local_wrap to i8*), i64 16, i1 false)
  %4 = load i8*, i8** getelementptr inbounds ([2 x %struct.Wrap], [2 x %struct.Wrap]* @global_wrap, i64 0, i64 0, i32 0), align 16
  %5 = bitcast i8* %4 to void ()*
  store void ()* %5, void ()** %2, align 8
  %6 = load void ()*, void ()** %2, align 8
  call void %6()
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.Wrap], [2 x %struct.Wrap]* @global_wrap, i64 0, i64 1, i32 0), align 8
  %8 = bitcast i8* %7 to void ()*
  store void ()* %8, void ()** %2, align 8
  %9 = load void ()*, void ()** %2, align 8
  call void %9()
  %10 = getelementptr inbounds [2 x %struct.Wrap], [2 x %struct.Wrap]* %1, i64 0, i64 0
  %11 = getelementptr inbounds %struct.Wrap, %struct.Wrap* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 16
  %13 = bitcast i8* %12 to void ()*
  store void ()* %13, void ()** %2, align 8
  %14 = load void ()*, void ()** %2, align 8
  call void %14()
  %15 = getelementptr inbounds [2 x %struct.Wrap], [2 x %struct.Wrap]* %1, i64 0, i64 1
  %16 = getelementptr inbounds %struct.Wrap, %struct.Wrap* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to void ()*
  store void ()* %18, void ()** %2, align 8
  %19 = load void ()*, void ()** %2, align 8
  call void %19()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_ni() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_one() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_two() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_three() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_multi_relocs() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [3 x void ()*], [3 x void ()*]* @table, i64 0, i64 %8
  %10 = load void ()*, void ()** %9, align 8
  call void %10()
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2, !llvm.loop !6

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_zero_init() #0 {
  %1 = alloca %struct.SEB, align 4
  %2 = alloca %struct.SEC, align 4
  %3 = alloca %struct.SED, align 4
  %4 = bitcast %struct.SEB* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.SEB* @__const.test_zero_init.b to i8*), i64 20, i1 false)
  %5 = bitcast %struct.SEC* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.SEC* @__const.test_zero_init.c to i8*), i64 16, i1 false)
  %6 = bitcast %struct.SED* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.SED* @__const.test_zero_init.d to i8*), i64 16, i1 false)
  %7 = getelementptr inbounds %struct.SEB, %struct.SEB* %1, i32 0, i32 0
  call void @test_correct_filling(%struct.SEA* %7)
  %8 = getelementptr inbounds %struct.SEC, %struct.SEC* %2, i32 0, i32 0
  call void @test_correct_filling(%struct.SEA* %8)
  %9 = getelementptr inbounds %struct.SED, %struct.SED* %3, i32 0, i32 0
  call void @test_correct_filling(%struct.SEA* %9)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_correct_filling(%struct.SEA* %0) #0 {
  %2 = alloca %struct.SEA*, align 8
  store %struct.SEA* %0, %struct.SEA** %2, align 8
  %3 = load %struct.SEA*, %struct.SEA** %2, align 8
  %4 = getelementptr inbounds %struct.SEA, %struct.SEA* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.SEA*, %struct.SEA** %2, align 8
  %9 = getelementptr inbounds %struct.SEA, %struct.SEA* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.SEA*, %struct.SEA** %2, align 8
  %14 = getelementptr inbounds %struct.SEA, %struct.SEA* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.SEA*, %struct.SEA** %2, align 8
  %19 = getelementptr inbounds %struct.SEA, %struct.SEA* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12, %7, %1
  %23 = load i32, i32* @test_correct_filling.i, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 %23)
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @test_correct_filling.i, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @test_correct_filling.i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @test_correct_filling.i, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds (%struct.contains_empty, %struct.contains_empty* @ce, i32 0, i32 0), i64 2)
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds (%struct.S, %struct.S* @gs, i32 0, i32 0), i64 4)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds (%struct.S, %struct.S* @gs2, i32 0, i32 0), i64 4)
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds (%struct.T, %struct.T* @gt, i32 0, i32 0, i32 0), i64 17)
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds (%struct.U, %struct.U* @gu, i32 0, i32 0), i64 23)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds (%struct.U, %struct.U* @gu2, i32 0, i32 0), i64 23)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds (%struct.U, %struct.U* @gu3, i32 0, i32 0), i64 23)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds (%struct.U, %struct.U* @gu4, i32 0, i32 0), i64 23)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds (%struct.S, %struct.S* @gs3, i32 0, i32 0), i64 4)
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds (%struct.V, %struct.V* @gv, i32 0, i32 0, i32 0), i64 22)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds (%struct.V, %struct.V* @gv2, i32 0, i32 0, i32 0), i64 22)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds (%struct.V, %struct.V* @gv3, i32 0, i32 0, i32 0), i64 22)
  call void @print_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([2 x %struct.SS], [2 x %struct.SS]* @sinit16, i32 0, i32 0, i32 0, i32 0), i64 8)
  call void @print_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ({ %struct.V, [2 x %struct.S] }, { %struct.V, [2 x %struct.S] }* @gw, i32 0, i32 0, i32 0, i32 0), i64 22)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds (%struct.SU, %struct.SU* @gsu, i32 0, i32 0, i32 0), i64 2)
  call void @print_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ({ %struct.anon, [2 x i8] }, { %struct.anon, [2 x i8] }* @guv, i32 0, i32 0, i32 0), i64 4)
  call void @print_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ({ %struct.anon, [2 x i8] }, { %struct.anon, [2 x i8] }* @guv, i32 0, i32 0, i32 1), i64 1)
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ({ %struct.anon, [2 x i8] }, { %struct.anon, [2 x i8] }* @guv2, i32 0, i32 0, i32 0), i64 4)
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ({ %struct.anon, [2 x i8] }, { %struct.anon, [2 x i8] }* @guv3, i32 0, i32 0, i32 0), i64 4)
  call void @print_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ({ { { <{ i8, i8, i8, i8, [12 x i8] }> } }, { { <{ i8, i8, i8, i8, [12 x i8] }> } } }, { { { <{ i8, i8, i8, i8, [12 x i8] }> } }, { { <{ i8, i8, i8, i8, [12 x i8] }> } } }* @phdr, i32 0, i32 0, i32 0, i32 0, i32 0), i64 32)
  call void @foo(%struct.W* bitcast ({ %struct.V, [2 x %struct.S] }* @gw to %struct.W*), %struct.pkthdr* bitcast ({ { { <{ i8, i8, i8, i8, [12 x i8] }> } }, { { <{ i8, i8, i8, i8, [12 x i8] }> } } }* @phdr to %struct.pkthdr*))
  call void @test_compound_with_relocs()
  call void @test_multi_relocs()
  %2 = call i32 @test_zero_init()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
