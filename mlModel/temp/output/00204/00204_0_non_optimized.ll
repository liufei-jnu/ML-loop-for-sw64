; ModuleID = '../files/test/00204.c'
source_filename = "../files/test/00204.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

%struct.s1 = type { [1 x i8] }
%struct.s2 = type { [2 x i8] }
%struct.s3 = type { [3 x i8] }
%struct.s4 = type { [4 x i8] }
%struct.s5 = type { [5 x i8] }
%struct.s6 = type { [6 x i8] }
%struct.s7 = type { [7 x i8] }
%struct.s8 = type { [8 x i8] }
%struct.s9 = type { [9 x i8] }
%struct.s10 = type { [10 x i8] }
%struct.s11 = type { [11 x i8] }
%struct.s12 = type { [12 x i8] }
%struct.s13 = type { [13 x i8] }
%struct.s14 = type { [14 x i8] }
%struct.s15 = type { [15 x i8] }
%struct.s16 = type { [16 x i8] }
%struct.s17 = type { [17 x i8] }
%struct.hfa11 = type { float }
%struct.hfa12 = type { float, float }
%struct.hfa13 = type { float, float, float }
%struct.hfa14 = type { float, float, float, float }
%struct.hfa21 = type { double }
%struct.hfa22 = type { double, double }
%struct.hfa23 = type { double, double, double }
%struct.hfa24 = type { double, double, double, double }
%struct.hfa31 = type { fp128 }
%struct.hfa32 = type { fp128, fp128 }
%struct.hfa33 = type { fp128, fp128, fp128 }
%struct.hfa34 = type { fp128, fp128, fp128, fp128 }
%struct.__va_list = type { i8*, i32 }

@s1 = dso_local global %struct.s1 { [1 x i8] c"0" }, align 1
@s2 = dso_local global %struct.s2 { [2 x i8] c"12" }, align 1
@s3 = dso_local global %struct.s3 { [3 x i8] c"345" }, align 1
@s4 = dso_local global %struct.s4 { [4 x i8] c"6789" }, align 1
@s5 = dso_local global %struct.s5 { [5 x i8] c"abcde" }, align 1
@s6 = dso_local global %struct.s6 { [6 x i8] c"fghijk" }, align 1
@s7 = dso_local global %struct.s7 { [7 x i8] c"lmnopqr" }, align 1
@s8 = dso_local global %struct.s8 { [8 x i8] c"stuvwxyz" }, align 1
@s9 = dso_local global %struct.s9 { [9 x i8] c"ABCDEFGHI" }, align 1
@s10 = dso_local global %struct.s10 { [10 x i8] c"JKLMNOPQRS" }, align 1
@s11 = dso_local global %struct.s11 { [11 x i8] c"TUVWXYZ0123" }, align 1
@s12 = dso_local global %struct.s12 { [12 x i8] c"456789abcdef" }, align 1
@s13 = dso_local global %struct.s13 { [13 x i8] c"ghijklmnopqrs" }, align 1
@s14 = dso_local global %struct.s14 { [14 x i8] c"tuvwxyzABCDEFG" }, align 1
@s15 = dso_local global %struct.s15 { [15 x i8] c"HIJKLMNOPQRSTUV" }, align 1
@s16 = dso_local global %struct.s16 { [16 x i8] c"WXYZ0123456789ab" }, align 1
@s17 = dso_local global %struct.s17 { [17 x i8] c"cdefghijklmnopqrs" }, align 1
@hfa11 = dso_local global %struct.hfa11 { float 0x4026333340000000 }, align 4
@hfa12 = dso_local global %struct.hfa12 { float 0x4028333340000000, float 0x4028666660000000 }, align 4
@hfa13 = dso_local global %struct.hfa13 { float 0x402A333340000000, float 0x402A666660000000, float 0x402A9999A0000000 }, align 4
@hfa14 = dso_local global %struct.hfa14 { float 0x402C333340000000, float 0x402C666660000000, float 0x402C9999A0000000, float 0x402CCCCCC0000000 }, align 4
@hfa21 = dso_local global %struct.hfa21 { double 2.110000e+01 }, align 8
@hfa22 = dso_local global %struct.hfa22 { double 2.210000e+01, double 2.220000e+01 }, align 8
@hfa23 = dso_local global %struct.hfa23 { double 2.310000e+01, double 2.320000e+01, double 2.330000e+01 }, align 8
@hfa24 = dso_local global %struct.hfa24 { double 2.410000e+01, double 2.420000e+01, double 2.430000e+01, double 2.440000e+01 }, align 8
@hfa31 = dso_local global %struct.hfa31 { fp128 0xLA0000000000000004003F19999999999 }, align 16
@hfa32 = dso_local global %struct.hfa32 { fp128 0xLD000000000000000400400CCCCCCCCCC, fp128 0xLA0000000000000004004019999999999 }, align 16
@hfa33 = dso_local global %struct.hfa33 { fp128 0xLD000000000000000400408CCCCCCCCCC, fp128 0xLA0000000000000004004099999999999, fp128 0xL600000000000000040040A6666666666 }, align 16
@hfa34 = dso_local global %struct.hfa34 { fp128 0xLD000000000000000400410CCCCCCCCCC, fp128 0xLA0000000000000004004119999999999, fp128 0xL60000000000000004004126666666666, fp128 0xL30000000000000004004133333333333 }, align 16
@.str = private unnamed_addr constant [6 x i8] c"%.1s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.2s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.3s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.4s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.5s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.6s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.7s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.8s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%.9s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%.10s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%.11s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%.12s\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%.13s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%.14s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%.15s\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%.16s\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%.17s\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%.1f\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%.1f %.1f\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%.1f %.1f %.1f\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"%.1f %.1f %.1f %.1f\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%.1Lf\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"%.1Lf %.1Lf\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%.1Lf %.1Lf %.1Lf\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%.1Lf %.1Lf %.1Lf %.1Lf\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"%.3s %.3s %.3s %.3s %.3s %.3s\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"%.1f %.1f %.1f %.1f %.1Lf %.1Lf\0A\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"%.1s %.1f %.1f %.2s %.1f %.1f %.3s %.1Lf %.1Lf\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Arguments:\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Return values:\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%7s\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%.7s\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%9s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"%.9s\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%hfa11\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"%.1f,%.1f\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"%hfa12\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"%hfa13\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%hfa14\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%hfa21\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%hfa22\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"%hfa23\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%hfa24\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%hfa31\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"%.1Lf,%.1Lf\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%hfa32\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"%hfa33\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%hfa34\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"stdarg:\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"%9s %9s %9s %9s %9s %9s\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"%7s %9s %9s %9s %9s %9s\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"HFA long double:\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"%hfa34 %hfa34 %hfa34 %hfa34\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"%hfa33 %hfa34 %hfa34 %hfa34\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"%hfa32 %hfa34 %hfa34 %hfa34\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"%hfa31 %hfa34 %hfa34 %hfa34\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"%hfa32 %hfa33 %hfa33 %hfa33 %hfa33\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"%hfa31 %hfa33 %hfa33 %hfa33 %hfa33\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"%hfa33 %hfa33 %hfa33 %hfa33\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"%hfa34 %hfa32 %hfa32 %hfa32 %hfa32\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"%hfa33 %hfa32 %hfa32 %hfa32 %hfa32\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"%hfa34 %hfa32 %hfa31 %hfa31 %hfa31 %hfa31\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"HFA double:\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"%hfa24 %hfa24 %hfa24 %hfa24\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"%hfa23 %hfa24 %hfa24 %hfa24\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"%hfa22 %hfa24 %hfa24 %hfa24\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%hfa21 %hfa24 %hfa24 %hfa24\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"%hfa22 %hfa23 %hfa23 %hfa23 %hfa23\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"%hfa21 %hfa23 %hfa23 %hfa23 %hfa23\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"%hfa23 %hfa23 %hfa23 %hfa23\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"%hfa24 %hfa22 %hfa22 %hfa22 %hfa22\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"%hfa23 %hfa22 %hfa22 %hfa22 %hfa22\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"%hfa24 %hfa22 %hfa21 %hfa21 %hfa21 %hfa21\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"HFA float:\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"%hfa14 %hfa14 %hfa14 %hfa14\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"%hfa13 %hfa14 %hfa14 %hfa14\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"%hfa12 %hfa14 %hfa14 %hfa14\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"%hfa11 %hfa14 %hfa14 %hfa14\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"%hfa12 %hfa13 %hfa13 %hfa13 %hfa13\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"%hfa11 %hfa13 %hfa13 %hfa13 %hfa13\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"%hfa13 %hfa13 %hfa13 %hfa13\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"%hfa14 %hfa12 %hfa12 %hfa12 %hfa12\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"%hfa13 %hfa12 %hfa12 %hfa12 %hfa12\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"%hfa14 %hfa12 %hfa11 %hfa11 %hfa11 %hfa11\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"%llx\0A\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"MOVI:\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s1(i64 inreg %0) #0 {
  %2 = alloca %struct.s1, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [1 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 1, i1 false)
  %7 = getelementptr inbounds %struct.s1, %struct.s1* %2, i32 0, i32 0
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local signext i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s2(i64 inreg %0) #0 {
  %2 = alloca %struct.s2, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s2, %struct.s2* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [2 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 2, i1 false)
  %7 = getelementptr inbounds %struct.s2, %struct.s2* %2, i32 0, i32 0
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s3(i64 inreg %0) #0 {
  %2 = alloca %struct.s3, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [3 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 3, i1 false)
  %7 = getelementptr inbounds %struct.s3, %struct.s3* %2, i32 0, i32 0
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s4(i64 inreg %0) #0 {
  %2 = alloca %struct.s4, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s4, %struct.s4* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [4 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 4, i1 false)
  %7 = getelementptr inbounds %struct.s4, %struct.s4* %2, i32 0, i32 0
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s5(i64 inreg %0) #0 {
  %2 = alloca %struct.s5, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s5, %struct.s5* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [5 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 5, i1 false)
  %7 = getelementptr inbounds %struct.s5, %struct.s5* %2, i32 0, i32 0
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s6(i64 inreg %0) #0 {
  %2 = alloca %struct.s6, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s6, %struct.s6* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [6 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 6, i1 false)
  %7 = getelementptr inbounds %struct.s6, %struct.s6* %2, i32 0, i32 0
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s7(i64 inreg %0) #0 {
  %2 = alloca %struct.s7, align 1
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.s7, %struct.s7* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast [7 x i8]* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 8 %6, i64 7, i1 false)
  %7 = getelementptr inbounds %struct.s7, %struct.s7* %2, i32 0, i32 0
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s8(i64 inreg %0) #0 {
  %2 = alloca %struct.s8, align 1
  %3 = getelementptr inbounds %struct.s8, %struct.s8* %2, i32 0, i32 0
  %4 = bitcast [8 x i8]* %3 to i64*
  store i64 %0, i64* %4, align 1
  %5 = getelementptr inbounds %struct.s8, %struct.s8* %2, i32 0, i32 0
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %7 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s9(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s9, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s9* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 9, i1 false)
  %9 = getelementptr inbounds %struct.s9, %struct.s9* %3, i32 0, i32 0
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s10(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s10, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s10* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 10, i1 false)
  %9 = getelementptr inbounds %struct.s10, %struct.s10* %3, i32 0, i32 0
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s11(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s11, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s11* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 11, i1 false)
  %9 = getelementptr inbounds %struct.s11, %struct.s11* %3, i32 0, i32 0
  %10 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s12(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s12, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s12* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.s12, %struct.s12* %3, i32 0, i32 0
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s13(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s13, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s13* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 13, i1 false)
  %9 = getelementptr inbounds %struct.s13, %struct.s13* %3, i32 0, i32 0
  %10 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s14(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s14, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s14* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 14, i1 false)
  %9 = getelementptr inbounds %struct.s14, %struct.s14* %3, i32 0, i32 0
  %10 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s15(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s15, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = bitcast %struct.s15* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 15, i1 false)
  %9 = getelementptr inbounds %struct.s15, %struct.s15* %3, i32 0, i32 0
  %10 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s16(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.s16, align 1
  %4 = bitcast %struct.s16* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 1
  %7 = getelementptr inbounds %struct.s16, %struct.s16* %3, i32 0, i32 0
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %9 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_s17(i64 inreg %0, i64 inreg %1, i64 inreg %2) #0 {
  %4 = alloca %struct.s17, align 1
  %5 = alloca { i64, i64, i64 }, align 1
  %6 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 1
  %7 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 1
  %8 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %5, i32 0, i32 2
  store i64 %2, i64* %8, align 1
  %9 = bitcast %struct.s17* %4 to i8*
  %10 = bitcast { i64, i64, i64 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 17, i1 false)
  %11 = getelementptr inbounds %struct.s17, %struct.s17* %4, i32 0, i32 0
  %12 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %13 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa11(i64 inreg %0) #0 {
  %2 = alloca %struct.hfa11, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.hfa11, %struct.hfa11* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %5 = bitcast float* %4 to i8*
  %6 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 8 %6, i64 4, i1 false)
  %7 = getelementptr inbounds %struct.hfa11, %struct.hfa11* %2, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double %9)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa12(i64 inreg %0) #0 {
  %2 = alloca %struct.hfa12, align 4
  %3 = bitcast %struct.hfa12* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = getelementptr inbounds %struct.hfa12, %struct.hfa12* %2, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds %struct.hfa12, %struct.hfa12* %2, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %6, double %9)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa13(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.hfa13, align 4
  %4 = alloca { i64, i64 }, align 4
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 4
  %7 = bitcast %struct.hfa13* %3 to i8*
  %8 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %3, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %3, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %3, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), double %11, double %14, double %17)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa14(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.hfa14, align 4
  %4 = bitcast %struct.hfa14* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %3, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %3, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %3, i32 0, i32 2
  %14 = load float, float* %13, align 4
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %3, i32 0, i32 3
  %17 = load float, float* %16, align 4
  %18 = fpext float %17 to double
  %19 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), double %9, double %12, double %15, double %18)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa21(i64 inreg %0) #0 {
  %2 = alloca %struct.hfa21, align 8
  %3 = getelementptr inbounds %struct.hfa21, %struct.hfa21* %2, i32 0, i32 0
  %4 = bitcast double* %3 to i64*
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.hfa21, %struct.hfa21* %2, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double %6)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa22(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.hfa22, align 8
  %4 = bitcast %struct.hfa22* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.hfa22, %struct.hfa22* %3, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.hfa22, %struct.hfa22* %3, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %8, double %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa23(i64 inreg %0, i64 inreg %1, i64 inreg %2) #0 {
  %4 = alloca %struct.hfa23, align 8
  %5 = bitcast %struct.hfa23* %4 to { i64, i64, i64 }*
  %6 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %5, i32 0, i32 2
  store i64 %2, i64* %8, align 8
  %9 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %4, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %4, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %4, i32 0, i32 2
  %14 = load double, double* %13, align 8
  %15 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), double %10, double %12, double %14)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa24(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3) #0 {
  %5 = alloca %struct.hfa24, align 8
  %6 = bitcast %struct.hfa24* %5 to { i64, i64, i64, i64 }*
  %7 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %6, i32 0, i32 2
  store i64 %2, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %6, i32 0, i32 3
  store i64 %3, i64* %10, align 8
  %11 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %5, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %5, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %5, i32 0, i32 2
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %5, i32 0, i32 3
  %18 = load double, double* %17, align 8
  %19 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), double %12, double %14, double %16, double %18)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa31(i64 inreg %0, i64 inreg %1) #0 {
  %3 = alloca %struct.hfa31, align 16
  %4 = alloca fp128, align 16
  %5 = bitcast %struct.hfa31* %3 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 16
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.hfa31, %struct.hfa31* %3, i32 0, i32 0
  %9 = load fp128, fp128* %8, align 16
  store fp128 %9, fp128* %4, align 16
  %10 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), fp128* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa32(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3) #0 {
  %5 = alloca %struct.hfa32, align 16
  %6 = alloca fp128, align 16
  %7 = alloca fp128, align 16
  %8 = bitcast %struct.hfa32* %5 to { i64, i64, i64, i64 }*
  %9 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %8, i32 0, i32 2
  store i64 %2, i64* %11, align 16
  %12 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %8, i32 0, i32 3
  store i64 %3, i64* %12, align 8
  %13 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %5, i32 0, i32 0
  %14 = load fp128, fp128* %13, align 16
  %15 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %5, i32 0, i32 0
  %16 = load fp128, fp128* %15, align 16
  store fp128 %14, fp128* %6, align 16
  store fp128 %16, fp128* %7, align 16
  %17 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), fp128* %6, fp128* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa33(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3, i64 inreg %4, i64 inreg %5) #0 {
  %7 = alloca %struct.hfa33, align 16
  %8 = alloca fp128, align 16
  %9 = alloca fp128, align 16
  %10 = alloca fp128, align 16
  %11 = bitcast %struct.hfa33* %7 to { i64, i64, i64, i64, i64, i64 }*
  %12 = getelementptr inbounds { i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* %11, i32 0, i32 0
  store i64 %0, i64* %12, align 16
  %13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* %11, i32 0, i32 1
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* %11, i32 0, i32 2
  store i64 %2, i64* %14, align 16
  %15 = getelementptr inbounds { i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* %11, i32 0, i32 3
  store i64 %3, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* %11, i32 0, i32 4
  store i64 %4, i64* %16, align 16
  %17 = getelementptr inbounds { i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* %11, i32 0, i32 5
  store i64 %5, i64* %17, align 8
  %18 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %7, i32 0, i32 0
  %19 = load fp128, fp128* %18, align 16
  %20 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %7, i32 0, i32 1
  %21 = load fp128, fp128* %20, align 16
  %22 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %7, i32 0, i32 2
  %23 = load fp128, fp128* %22, align 16
  store fp128 %19, fp128* %8, align 16
  store fp128 %21, fp128* %9, align 16
  store fp128 %23, fp128* %10, align 16
  %24 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), fp128* %8, fp128* %9, fp128* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa_hfa34(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3, i64 inreg %4, i64 inreg %5, i64 inreg %6, i64 inreg %7) #0 {
  %9 = alloca %struct.hfa34, align 16
  %10 = alloca fp128, align 16
  %11 = alloca fp128, align 16
  %12 = alloca fp128, align 16
  %13 = alloca fp128, align 16
  %14 = bitcast %struct.hfa34* %9 to { i64, i64, i64, i64, i64, i64, i64, i64 }*
  %15 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 16
  %16 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 1
  store i64 %1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 2
  store i64 %2, i64* %17, align 16
  %18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 3
  store i64 %3, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 4
  store i64 %4, i64* %19, align 16
  %20 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 5
  store i64 %5, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 6
  store i64 %6, i64* %21, align 16
  %22 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %14, i32 0, i32 7
  store i64 %7, i64* %22, align 8
  %23 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %9, i32 0, i32 0
  %24 = load fp128, fp128* %23, align 16
  %25 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %9, i32 0, i32 1
  %26 = load fp128, fp128* %25, align 16
  %27 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %9, i32 0, i32 2
  %28 = load fp128, fp128* %27, align 16
  %29 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %9, i32 0, i32 3
  %30 = load fp128, fp128* %29, align 16
  store fp128 %24, fp128* %10, align 16
  store fp128 %26, fp128* %11, align 16
  store fp128 %28, fp128* %12, align 16
  store fp128 %30, fp128* %13, align 16
  %31 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), fp128* %10, fp128* %11, fp128* %12, fp128* %13)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa1(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3, i64 inreg %4, i64 inreg %5, i64 inreg %6, i64 inreg %7, i64 inreg %8, i64 inreg %9, i64 inreg %10) #0 {
  %12 = alloca %struct.s8, align 1
  %13 = alloca %struct.s9, align 1
  %14 = alloca { i64, i64 }, align 1
  %15 = alloca %struct.s10, align 1
  %16 = alloca { i64, i64 }, align 1
  %17 = alloca %struct.s11, align 1
  %18 = alloca { i64, i64 }, align 1
  %19 = alloca %struct.s12, align 1
  %20 = alloca { i64, i64 }, align 1
  %21 = alloca %struct.s13, align 1
  %22 = alloca { i64, i64 }, align 1
  %23 = getelementptr inbounds %struct.s8, %struct.s8* %12, i32 0, i32 0
  %24 = bitcast [8 x i8]* %23 to i64*
  store i64 %0, i64* %24, align 1
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %1, i64* %25, align 1
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %2, i64* %26, align 1
  %27 = bitcast %struct.s9* %13 to i8*
  %28 = bitcast { i64, i64 }* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %28, i64 9, i1 false)
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %3, i64* %29, align 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %4, i64* %30, align 1
  %31 = bitcast %struct.s10* %15 to i8*
  %32 = bitcast { i64, i64 }* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 10, i1 false)
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %5, i64* %33, align 1
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %6, i64* %34, align 1
  %35 = bitcast %struct.s11* %17 to i8*
  %36 = bitcast { i64, i64 }* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %36, i64 11, i1 false)
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %7, i64* %37, align 1
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %8, i64* %38, align 1
  %39 = bitcast %struct.s12* %19 to i8*
  %40 = bitcast { i64, i64 }* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  store i64 %9, i64* %41, align 1
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  store i64 %10, i64* %42, align 1
  %43 = bitcast %struct.s13* %21 to i8*
  %44 = bitcast { i64, i64 }* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 13, i1 false)
  %45 = getelementptr inbounds %struct.s8, %struct.s8* %12, i32 0, i32 0
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 0
  %47 = getelementptr inbounds %struct.s9, %struct.s9* %13, i32 0, i32 0
  %48 = getelementptr inbounds [9 x i8], [9 x i8]* %47, i64 0, i64 0
  %49 = getelementptr inbounds %struct.s10, %struct.s10* %15, i32 0, i32 0
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %49, i64 0, i64 0
  %51 = getelementptr inbounds %struct.s11, %struct.s11* %17, i32 0, i32 0
  %52 = getelementptr inbounds [11 x i8], [11 x i8]* %51, i64 0, i64 0
  %53 = getelementptr inbounds %struct.s12, %struct.s12* %19, i32 0, i32 0
  %54 = getelementptr inbounds [12 x i8], [12 x i8]* %53, i64 0, i64 0
  %55 = getelementptr inbounds %struct.s13, %struct.s13* %21, i32 0, i32 0
  %56 = getelementptr inbounds [13 x i8], [13 x i8]* %55, i64 0, i64 0
  %57 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i8* %46, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa2(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3, i64 inreg %4, i64 inreg %5, i64 inreg %6, i64 inreg %7, i64 inreg %8, i64 inreg %9, i64 inreg %10, i64 inreg %11) #0 {
  %13 = alloca %struct.s9, align 1
  %14 = alloca { i64, i64 }, align 1
  %15 = alloca %struct.s10, align 1
  %16 = alloca { i64, i64 }, align 1
  %17 = alloca %struct.s11, align 1
  %18 = alloca { i64, i64 }, align 1
  %19 = alloca %struct.s12, align 1
  %20 = alloca { i64, i64 }, align 1
  %21 = alloca %struct.s13, align 1
  %22 = alloca { i64, i64 }, align 1
  %23 = alloca %struct.s14, align 1
  %24 = alloca { i64, i64 }, align 1
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %0, i64* %25, align 1
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %1, i64* %26, align 1
  %27 = bitcast %struct.s9* %13 to i8*
  %28 = bitcast { i64, i64 }* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %28, i64 9, i1 false)
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %2, i64* %29, align 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %3, i64* %30, align 1
  %31 = bitcast %struct.s10* %15 to i8*
  %32 = bitcast { i64, i64 }* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 10, i1 false)
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %4, i64* %33, align 1
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %5, i64* %34, align 1
  %35 = bitcast %struct.s11* %17 to i8*
  %36 = bitcast { i64, i64 }* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %36, i64 11, i1 false)
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %6, i64* %37, align 1
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %7, i64* %38, align 1
  %39 = bitcast %struct.s12* %19 to i8*
  %40 = bitcast { i64, i64 }* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  store i64 %8, i64* %41, align 1
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  store i64 %9, i64* %42, align 1
  %43 = bitcast %struct.s13* %21 to i8*
  %44 = bitcast { i64, i64 }* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 13, i1 false)
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  store i64 %10, i64* %45, align 1
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  store i64 %11, i64* %46, align 1
  %47 = bitcast %struct.s14* %23 to i8*
  %48 = bitcast { i64, i64 }* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 14, i1 false)
  %49 = getelementptr inbounds %struct.s9, %struct.s9* %13, i32 0, i32 0
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %49, i64 0, i64 0
  %51 = getelementptr inbounds %struct.s10, %struct.s10* %15, i32 0, i32 0
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %51, i64 0, i64 0
  %53 = getelementptr inbounds %struct.s11, %struct.s11* %17, i32 0, i32 0
  %54 = getelementptr inbounds [11 x i8], [11 x i8]* %53, i64 0, i64 0
  %55 = getelementptr inbounds %struct.s12, %struct.s12* %19, i32 0, i32 0
  %56 = getelementptr inbounds [12 x i8], [12 x i8]* %55, i64 0, i64 0
  %57 = getelementptr inbounds %struct.s13, %struct.s13* %21, i32 0, i32 0
  %58 = getelementptr inbounds [13 x i8], [13 x i8]* %57, i64 0, i64 0
  %59 = getelementptr inbounds %struct.s14, %struct.s14* %23, i32 0, i32 0
  %60 = getelementptr inbounds [14 x i8], [14 x i8]* %59, i64 0, i64 0
  %61 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i8* %50, i8* %52, i8* %54, i8* %56, i8* %58, i8* %60)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa3(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3, i64 inreg %4, i64 inreg %5, i64 inreg %6, i64 inreg %7, i64 inreg %8) #0 {
  %10 = alloca %struct.hfa14, align 4
  %11 = alloca %struct.hfa23, align 8
  %12 = alloca %struct.hfa32, align 16
  %13 = alloca fp128, align 16
  %14 = alloca fp128, align 16
  %15 = bitcast %struct.hfa14* %10 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %1, i64* %17, align 4
  %18 = bitcast %struct.hfa23* %11 to { i64, i64, i64 }*
  %19 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %18, i32 0, i32 0
  store i64 %2, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %18, i32 0, i32 1
  store i64 %3, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %18, i32 0, i32 2
  store i64 %4, i64* %21, align 8
  %22 = bitcast %struct.hfa32* %12 to { i64, i64, i64, i64 }*
  %23 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %22, i32 0, i32 0
  store i64 %5, i64* %23, align 16
  %24 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %22, i32 0, i32 1
  store i64 %6, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %22, i32 0, i32 2
  store i64 %7, i64* %25, align 16
  %26 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %22, i32 0, i32 3
  store i64 %8, i64* %26, align 8
  %27 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %10, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %10, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %11, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %11, i32 0, i32 2
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %12, i32 0, i32 0
  %38 = load fp128, fp128* %37, align 16
  %39 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %12, i32 0, i32 1
  %40 = load fp128, fp128* %39, align 16
  store fp128 %38, fp128* %13, align 16
  store fp128 %40, fp128* %14, align 16
  %41 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), double %29, double %32, double %34, double %36, fp128* %13, fp128* %14)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fa4(i64 inreg %0, i64 inreg %1, i64 inreg %2, i64 inreg %3, i64 inreg %4, i64 inreg %5, i64 inreg %6, i64 inreg %7, i64 inreg %8, i64 %9, i64 inreg %10, i64 inreg %11, i64 inreg %12, i64 inreg %13, i64 inreg %14, i64 inreg %15, i64 inreg %16, i64 inreg %17) #0 {
  %19 = alloca %struct.s1, align 1
  %20 = alloca i64, align 8
  %21 = alloca %struct.hfa14, align 4
  %22 = alloca %struct.s2, align 1
  %23 = alloca i64, align 8
  %24 = alloca %struct.hfa24, align 8
  %25 = alloca %struct.s3, align 1
  %26 = alloca i64, align 8
  %27 = alloca %struct.hfa34, align 16
  %28 = alloca fp128, align 16
  %29 = alloca fp128, align 16
  %30 = getelementptr inbounds %struct.s1, %struct.s1* %19, i32 0, i32 0
  store i64 %0, i64* %20, align 8
  %31 = bitcast [1 x i8]* %30 to i8*
  %32 = bitcast i64* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 8 %32, i64 1, i1 false)
  %33 = bitcast %struct.hfa14* %21 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  store i64 %1, i64* %34, align 4
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  store i64 %2, i64* %35, align 4
  %36 = getelementptr inbounds %struct.s2, %struct.s2* %22, i32 0, i32 0
  store i64 %3, i64* %23, align 8
  %37 = bitcast [2 x i8]* %36 to i8*
  %38 = bitcast i64* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 8 %38, i64 2, i1 false)
  %39 = bitcast %struct.hfa24* %24 to { i64, i64, i64, i64 }*
  %40 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %39, i32 0, i32 0
  store i64 %4, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %39, i32 0, i32 1
  store i64 %5, i64* %41, align 8
  %42 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %39, i32 0, i32 2
  store i64 %6, i64* %42, align 8
  %43 = getelementptr inbounds { i64, i64, i64, i64 }, { i64, i64, i64, i64 }* %39, i32 0, i32 3
  store i64 %7, i64* %43, align 8
  %44 = getelementptr inbounds %struct.s3, %struct.s3* %25, i32 0, i32 0
  store i64 %8, i64* %26, align 8
  %45 = bitcast [3 x i8]* %44 to i8*
  %46 = bitcast i64* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 8 %46, i64 3, i1 false)
  %47 = bitcast %struct.hfa34* %27 to { i64, i64, i64, i64, i64, i64, i64, i64 }*
  %48 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 0
  store i64 %10, i64* %48, align 16
  %49 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 1
  store i64 %11, i64* %49, align 8
  %50 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 2
  store i64 %12, i64* %50, align 16
  %51 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 3
  store i64 %13, i64* %51, align 8
  %52 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 4
  store i64 %14, i64* %52, align 16
  %53 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 5
  store i64 %15, i64* %53, align 8
  %54 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 6
  store i64 %16, i64* %54, align 16
  %55 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* %47, i32 0, i32 7
  store i64 %17, i64* %55, align 8
  %56 = getelementptr inbounds %struct.s1, %struct.s1* %19, i32 0, i32 0
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %56, i64 0, i64 0
  %58 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %21, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %21, i32 0, i32 3
  %62 = load float, float* %61, align 4
  %63 = fpext float %62 to double
  %64 = getelementptr inbounds %struct.s2, %struct.s2* %22, i32 0, i32 0
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %64, i64 0, i64 0
  %66 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %24, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %24, i32 0, i32 3
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds %struct.s3, %struct.s3* %25, i32 0, i32 0
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %70, i64 0, i64 0
  %72 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %27, i32 0, i32 0
  %73 = load fp128, fp128* %72, align 16
  %74 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %27, i32 0, i32 3
  %75 = load fp128, fp128* %74, align 16
  store fp128 %73, fp128* %28, align 16
  store fp128 %75, fp128* %29, align 16
  %76 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0), i8* %57, double %60, double %63, i8* %65, double %67, double %69, i8* %71, fp128* %28, fp128* %29)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @arg() #0 {
  %1 = alloca { i64 }, align 1
  %2 = alloca { i64 }, align 1
  %3 = alloca { i64 }, align 1
  %4 = alloca { i64 }, align 1
  %5 = alloca { i64 }, align 1
  %6 = alloca { i64 }, align 1
  %7 = alloca { i64 }, align 1
  %8 = alloca { i64, i64 }, align 1
  %9 = alloca { i64, i64 }, align 1
  %10 = alloca { i64, i64 }, align 1
  %11 = alloca { i64, i64 }, align 1
  %12 = alloca { i64, i64 }, align 1
  %13 = alloca { i64, i64 }, align 1
  %14 = alloca { i64, i64 }, align 1
  %15 = alloca { i64, i64, i64 }, align 1
  %16 = alloca { i64 }, align 4
  %17 = alloca { i64, i64 }, align 4
  %18 = alloca { i64, i64 }, align 1
  %19 = alloca { i64, i64 }, align 1
  %20 = alloca { i64, i64 }, align 1
  %21 = alloca { i64, i64 }, align 1
  %22 = alloca { i64, i64 }, align 1
  %23 = alloca { i64, i64 }, align 1
  %24 = alloca { i64, i64 }, align 1
  %25 = alloca { i64, i64 }, align 1
  %26 = alloca { i64, i64 }, align 1
  %27 = alloca { i64, i64 }, align 1
  %28 = alloca { i64, i64 }, align 1
  %29 = alloca { i64 }, align 1
  %30 = alloca { i64 }, align 1
  %31 = alloca { i64 }, align 1
  %32 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %33 = bitcast { i64 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds (%struct.s1, %struct.s1* @s1, i32 0, i32 0, i32 0), i64 1, i1 false)
  %34 = getelementptr inbounds { i64 }, { i64 }* %1, i32 0, i32 0
  %35 = load i64, i64* %34, align 1
  call void @fa_s1(i64 inreg %35)
  %36 = bitcast { i64 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds (%struct.s2, %struct.s2* @s2, i32 0, i32 0, i32 0), i64 2, i1 false)
  %37 = getelementptr inbounds { i64 }, { i64 }* %2, i32 0, i32 0
  %38 = load i64, i64* %37, align 1
  call void @fa_s2(i64 inreg %38)
  %39 = bitcast { i64 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds (%struct.s3, %struct.s3* @s3, i32 0, i32 0, i32 0), i64 3, i1 false)
  %40 = getelementptr inbounds { i64 }, { i64 }* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 1
  call void @fa_s3(i64 inreg %41)
  %42 = bitcast { i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 getelementptr inbounds (%struct.s4, %struct.s4* @s4, i32 0, i32 0, i32 0), i64 4, i1 false)
  %43 = getelementptr inbounds { i64 }, { i64 }* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 1
  call void @fa_s4(i64 inreg %44)
  %45 = bitcast { i64 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 getelementptr inbounds (%struct.s5, %struct.s5* @s5, i32 0, i32 0, i32 0), i64 5, i1 false)
  %46 = getelementptr inbounds { i64 }, { i64 }* %5, i32 0, i32 0
  %47 = load i64, i64* %46, align 1
  call void @fa_s5(i64 inreg %47)
  %48 = bitcast { i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 getelementptr inbounds (%struct.s6, %struct.s6* @s6, i32 0, i32 0, i32 0), i64 6, i1 false)
  %49 = getelementptr inbounds { i64 }, { i64 }* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 1
  call void @fa_s6(i64 inreg %50)
  %51 = bitcast { i64 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 getelementptr inbounds (%struct.s7, %struct.s7* @s7, i32 0, i32 0, i32 0), i64 7, i1 false)
  %52 = getelementptr inbounds { i64 }, { i64 }* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 1
  call void @fa_s7(i64 inreg %53)
  %54 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.s8* @s8 to { i64 }*), i32 0, i32 0), align 1
  call void @fa_s8(i64 inreg %54)
  %55 = bitcast { i64, i64 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 1
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %59 = load i64, i64* %58, align 1
  call void @fa_s9(i64 inreg %57, i64 inreg %59)
  %60 = bitcast { i64, i64 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %60, i8* align 1 getelementptr inbounds (%struct.s10, %struct.s10* @s10, i32 0, i32 0, i32 0), i64 10, i1 false)
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %62 = load i64, i64* %61, align 1
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 1
  call void @fa_s10(i64 inreg %62, i64 inreg %64)
  %65 = bitcast { i64, i64 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 getelementptr inbounds (%struct.s11, %struct.s11* @s11, i32 0, i32 0, i32 0), i64 11, i1 false)
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %67 = load i64, i64* %66, align 1
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 1
  call void @fa_s11(i64 inreg %67, i64 inreg %69)
  %70 = bitcast { i64, i64 }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 getelementptr inbounds (%struct.s12, %struct.s12* @s12, i32 0, i32 0, i32 0), i64 12, i1 false)
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 1
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %74 = load i64, i64* %73, align 1
  call void @fa_s12(i64 inreg %72, i64 inreg %74)
  %75 = bitcast { i64, i64 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %75, i8* align 1 getelementptr inbounds (%struct.s13, %struct.s13* @s13, i32 0, i32 0, i32 0), i64 13, i1 false)
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %77 = load i64, i64* %76, align 1
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %79 = load i64, i64* %78, align 1
  call void @fa_s13(i64 inreg %77, i64 inreg %79)
  %80 = bitcast { i64, i64 }* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %80, i8* align 1 getelementptr inbounds (%struct.s14, %struct.s14* @s14, i32 0, i32 0, i32 0), i64 14, i1 false)
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %82 = load i64, i64* %81, align 1
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %84 = load i64, i64* %83, align 1
  call void @fa_s14(i64 inreg %82, i64 inreg %84)
  %85 = bitcast { i64, i64 }* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %85, i8* align 1 getelementptr inbounds (%struct.s15, %struct.s15* @s15, i32 0, i32 0, i32 0), i64 15, i1 false)
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %87 = load i64, i64* %86, align 1
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %89 = load i64, i64* %88, align 1
  call void @fa_s15(i64 inreg %87, i64 inreg %89)
  %90 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.s16* @s16 to { i64, i64 }*), i32 0, i32 0), align 1
  %91 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.s16* @s16 to { i64, i64 }*), i32 0, i32 1), align 1
  call void @fa_s16(i64 inreg %90, i64 inreg %91)
  %92 = bitcast { i64, i64, i64 }* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 getelementptr inbounds (%struct.s17, %struct.s17* @s17, i32 0, i32 0, i32 0), i64 17, i1 false)
  %93 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %15, i32 0, i32 0
  %94 = load i64, i64* %93, align 1
  %95 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %15, i32 0, i32 1
  %96 = load i64, i64* %95, align 1
  %97 = getelementptr inbounds { i64, i64, i64 }, { i64, i64, i64 }* %15, i32 0, i32 2
  %98 = load i64, i64* %97, align 1
  call void @fa_s17(i64 inreg %94, i64 inreg %96, i64 inreg %98)
  %99 = bitcast { i64 }* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %100 = getelementptr inbounds { i64 }, { i64 }* %16, i32 0, i32 0
  %101 = load i64, i64* %100, align 4
  call void @fa_hfa11(i64 inreg %101)
  %102 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  call void @fa_hfa12(i64 inreg %102)
  %103 = bitcast { i64, i64 }* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %105 = load i64, i64* %104, align 4
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %107 = load i64, i64* %106, align 4
  call void @fa_hfa13(i64 inreg %105, i64 inreg %107)
  %108 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %109 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  call void @fa_hfa14(i64 inreg %108, i64 inreg %109)
  %110 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  call void @fa_hfa21(i64 inreg %110)
  %111 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %112 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  call void @fa_hfa22(i64 inreg %111, i64 inreg %112)
  %113 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %114 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %115 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  call void @fa_hfa23(i64 inreg %113, i64 inreg %114, i64 inreg %115)
  %116 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %117 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %118 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %119 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void @fa_hfa24(i64 inreg %116, i64 inreg %117, i64 inreg %118, i64 inreg %119)
  %120 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %121 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  call void @fa_hfa31(i64 inreg %120, i64 inreg %121)
  %122 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %123 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %124 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %125 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void @fa_hfa32(i64 inreg %122, i64 inreg %123, i64 inreg %124, i64 inreg %125)
  %126 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %127 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %128 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %129 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %130 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %131 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  call void @fa_hfa33(i64 inreg %126, i64 inreg %127, i64 inreg %128, i64 inreg %129, i64 inreg %130, i64 inreg %131)
  %132 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %133 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %134 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %135 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %136 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %137 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %138 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %139 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  call void @fa_hfa34(i64 inreg %132, i64 inreg %133, i64 inreg %134, i64 inreg %135, i64 inreg %136, i64 inreg %137, i64 inreg %138, i64 inreg %139)
  %140 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.s8* @s8 to { i64 }*), i32 0, i32 0), align 1
  %141 = bitcast { i64, i64 }* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %141, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %143 = load i64, i64* %142, align 1
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %145 = load i64, i64* %144, align 1
  %146 = bitcast { i64, i64 }* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %146, i8* align 1 getelementptr inbounds (%struct.s10, %struct.s10* @s10, i32 0, i32 0, i32 0), i64 10, i1 false)
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %148 = load i64, i64* %147, align 1
  %149 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %150 = load i64, i64* %149, align 1
  %151 = bitcast { i64, i64 }* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %151, i8* align 1 getelementptr inbounds (%struct.s11, %struct.s11* @s11, i32 0, i32 0, i32 0), i64 11, i1 false)
  %152 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %153 = load i64, i64* %152, align 1
  %154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %155 = load i64, i64* %154, align 1
  %156 = bitcast { i64, i64 }* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %156, i8* align 1 getelementptr inbounds (%struct.s12, %struct.s12* @s12, i32 0, i32 0, i32 0), i64 12, i1 false)
  %157 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %158 = load i64, i64* %157, align 1
  %159 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %160 = load i64, i64* %159, align 1
  %161 = bitcast { i64, i64 }* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %161, i8* align 1 getelementptr inbounds (%struct.s13, %struct.s13* @s13, i32 0, i32 0, i32 0), i64 13, i1 false)
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %163 = load i64, i64* %162, align 1
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %165 = load i64, i64* %164, align 1
  call void @fa1(i64 inreg %140, i64 inreg %143, i64 inreg %145, i64 inreg %148, i64 inreg %150, i64 inreg %153, i64 inreg %155, i64 inreg %158, i64 inreg %160, i64 inreg %163, i64 inreg %165)
  %166 = bitcast { i64, i64 }* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %166, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %168 = load i64, i64* %167, align 1
  %169 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %170 = load i64, i64* %169, align 1
  %171 = bitcast { i64, i64 }* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %171, i8* align 1 getelementptr inbounds (%struct.s10, %struct.s10* @s10, i32 0, i32 0, i32 0), i64 10, i1 false)
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %173 = load i64, i64* %172, align 1
  %174 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %175 = load i64, i64* %174, align 1
  %176 = bitcast { i64, i64 }* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %176, i8* align 1 getelementptr inbounds (%struct.s11, %struct.s11* @s11, i32 0, i32 0, i32 0), i64 11, i1 false)
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %178 = load i64, i64* %177, align 1
  %179 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %180 = load i64, i64* %179, align 1
  %181 = bitcast { i64, i64 }* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %181, i8* align 1 getelementptr inbounds (%struct.s12, %struct.s12* @s12, i32 0, i32 0, i32 0), i64 12, i1 false)
  %182 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %183 = load i64, i64* %182, align 1
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %185 = load i64, i64* %184, align 1
  %186 = bitcast { i64, i64 }* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %186, i8* align 1 getelementptr inbounds (%struct.s13, %struct.s13* @s13, i32 0, i32 0, i32 0), i64 13, i1 false)
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %188 = load i64, i64* %187, align 1
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %190 = load i64, i64* %189, align 1
  %191 = bitcast { i64, i64 }* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %191, i8* align 1 getelementptr inbounds (%struct.s14, %struct.s14* @s14, i32 0, i32 0, i32 0), i64 14, i1 false)
  %192 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %193 = load i64, i64* %192, align 1
  %194 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %195 = load i64, i64* %194, align 1
  call void @fa2(i64 inreg %168, i64 inreg %170, i64 inreg %173, i64 inreg %175, i64 inreg %178, i64 inreg %180, i64 inreg %183, i64 inreg %185, i64 inreg %188, i64 inreg %190, i64 inreg %193, i64 inreg %195)
  %196 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %197 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %198 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %199 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %200 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %201 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %202 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %203 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %204 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void @fa3(i64 inreg %196, i64 inreg %197, i64 inreg %198, i64 inreg %199, i64 inreg %200, i64 inreg %201, i64 inreg %202, i64 inreg %203, i64 inreg %204)
  %205 = bitcast { i64 }* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %205, i8* align 1 getelementptr inbounds (%struct.s1, %struct.s1* @s1, i32 0, i32 0, i32 0), i64 1, i1 false)
  %206 = getelementptr inbounds { i64 }, { i64 }* %29, i32 0, i32 0
  %207 = load i64, i64* %206, align 1
  %208 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %209 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %210 = bitcast { i64 }* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %210, i8* align 1 getelementptr inbounds (%struct.s2, %struct.s2* @s2, i32 0, i32 0, i32 0), i64 2, i1 false)
  %211 = getelementptr inbounds { i64 }, { i64 }* %30, i32 0, i32 0
  %212 = load i64, i64* %211, align 1
  %213 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %214 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %215 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %216 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %217 = bitcast { i64 }* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %217, i8* align 1 getelementptr inbounds (%struct.s3, %struct.s3* @s3, i32 0, i32 0, i32 0), i64 3, i1 false)
  %218 = getelementptr inbounds { i64 }, { i64 }* %31, i32 0, i32 0
  %219 = load i64, i64* %218, align 1
  %220 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %221 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %222 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %223 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %224 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %225 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %226 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %227 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  call void @fa4(i64 inreg %207, i64 inreg %208, i64 inreg %209, i64 inreg %212, i64 inreg %213, i64 inreg %214, i64 inreg %215, i64 inreg %216, i64 inreg %219, i64 undef, i64 inreg %220, i64 inreg %221, i64 inreg %222, i64 inreg %223, i64 inreg %224, i64 inreg %225, i64 inreg %226, i64 inreg %227)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s1(%struct.s1* noalias sret(%struct.s1) align 1 %0) #0 {
  %2 = bitcast %struct.s1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s1, %struct.s1* @s1, i32 0, i32 0, i32 0), i64 1, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s2(%struct.s2* noalias sret(%struct.s2) align 1 %0) #0 {
  %2 = bitcast %struct.s2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s2, %struct.s2* @s2, i32 0, i32 0, i32 0), i64 2, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s3(%struct.s3* noalias sret(%struct.s3) align 1 %0) #0 {
  %2 = bitcast %struct.s3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s3, %struct.s3* @s3, i32 0, i32 0, i32 0), i64 3, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s4(%struct.s4* noalias sret(%struct.s4) align 1 %0) #0 {
  %2 = bitcast %struct.s4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s4, %struct.s4* @s4, i32 0, i32 0, i32 0), i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s5(%struct.s5* noalias sret(%struct.s5) align 1 %0) #0 {
  %2 = bitcast %struct.s5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s5, %struct.s5* @s5, i32 0, i32 0, i32 0), i64 5, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s6(%struct.s6* noalias sret(%struct.s6) align 1 %0) #0 {
  %2 = bitcast %struct.s6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s6, %struct.s6* @s6, i32 0, i32 0, i32 0), i64 6, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s7(%struct.s7* noalias sret(%struct.s7) align 1 %0) #0 {
  %2 = bitcast %struct.s7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s7, %struct.s7* @s7, i32 0, i32 0, i32 0), i64 7, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s8(%struct.s8* noalias sret(%struct.s8) align 1 %0) #0 {
  %2 = bitcast %struct.s8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s8, %struct.s8* @s8, i32 0, i32 0, i32 0), i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s9(%struct.s9* noalias sret(%struct.s9) align 1 %0) #0 {
  %2 = bitcast %struct.s9* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s10(%struct.s10* noalias sret(%struct.s10) align 1 %0) #0 {
  %2 = bitcast %struct.s10* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s10, %struct.s10* @s10, i32 0, i32 0, i32 0), i64 10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s11(%struct.s11* noalias sret(%struct.s11) align 1 %0) #0 {
  %2 = bitcast %struct.s11* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s11, %struct.s11* @s11, i32 0, i32 0, i32 0), i64 11, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s12(%struct.s12* noalias sret(%struct.s12) align 1 %0) #0 {
  %2 = bitcast %struct.s12* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s12, %struct.s12* @s12, i32 0, i32 0, i32 0), i64 12, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s13(%struct.s13* noalias sret(%struct.s13) align 1 %0) #0 {
  %2 = bitcast %struct.s13* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s13, %struct.s13* @s13, i32 0, i32 0, i32 0), i64 13, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s14(%struct.s14* noalias sret(%struct.s14) align 1 %0) #0 {
  %2 = bitcast %struct.s14* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s14, %struct.s14* @s14, i32 0, i32 0, i32 0), i64 14, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s15(%struct.s15* noalias sret(%struct.s15) align 1 %0) #0 {
  %2 = bitcast %struct.s15* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s15, %struct.s15* @s15, i32 0, i32 0, i32 0), i64 15, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s16(%struct.s16* noalias sret(%struct.s16) align 1 %0) #0 {
  %2 = bitcast %struct.s16* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s16, %struct.s16* @s16, i32 0, i32 0, i32 0), i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_s17(%struct.s17* noalias sret(%struct.s17) align 1 %0) #0 {
  %2 = bitcast %struct.s17* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds (%struct.s17, %struct.s17* @s17, i32 0, i32 0, i32 0), i64 17, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa11(%struct.hfa11* noalias sret(%struct.hfa11) align 4 %0) #0 {
  %2 = bitcast %struct.hfa11* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa12(%struct.hfa12* noalias sret(%struct.hfa12) align 4 %0) #0 {
  %2 = bitcast %struct.hfa12* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.hfa12* @hfa12 to i8*), i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa13(%struct.hfa13* noalias sret(%struct.hfa13) align 4 %0) #0 {
  %2 = bitcast %struct.hfa13* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa14(%struct.hfa14* noalias sret(%struct.hfa14) align 4 %0) #0 {
  %2 = bitcast %struct.hfa14* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.hfa14* @hfa14 to i8*), i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa21(%struct.hfa21* noalias sret(%struct.hfa21) align 8 %0) #0 {
  %2 = bitcast %struct.hfa21* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.hfa21* @hfa21 to i8*), i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa22(%struct.hfa22* noalias sret(%struct.hfa22) align 8 %0) #0 {
  %2 = bitcast %struct.hfa22* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.hfa22* @hfa22 to i8*), i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa23(%struct.hfa23* noalias sret(%struct.hfa23) align 8 %0) #0 {
  %2 = bitcast %struct.hfa23* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.hfa23* @hfa23 to i8*), i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa24(%struct.hfa24* noalias sret(%struct.hfa24) align 8 %0) #0 {
  %2 = bitcast %struct.hfa24* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.hfa24* @hfa24 to i8*), i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa31(%struct.hfa31* noalias sret(%struct.hfa31) align 16 %0) #0 {
  %2 = bitcast %struct.hfa31* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast (%struct.hfa31* @hfa31 to i8*), i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa32(%struct.hfa32* noalias sret(%struct.hfa32) align 16 %0) #0 {
  %2 = bitcast %struct.hfa32* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast (%struct.hfa32* @hfa32 to i8*), i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa33(%struct.hfa33* noalias sret(%struct.hfa33) align 16 %0) #0 {
  %2 = bitcast %struct.hfa33* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast (%struct.hfa33* @hfa33 to i8*), i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @fr_hfa34(%struct.hfa34* noalias sret(%struct.hfa34) align 16 %0) #0 {
  %2 = bitcast %struct.hfa34* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast (%struct.hfa34* @hfa34 to i8*), i64 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @ret() #0 {
  %1 = alloca %struct.s1, align 1
  %2 = alloca %struct.s2, align 1
  %3 = alloca %struct.s3, align 1
  %4 = alloca %struct.s4, align 1
  %5 = alloca %struct.s5, align 1
  %6 = alloca %struct.s6, align 1
  %7 = alloca %struct.s7, align 1
  %8 = alloca %struct.s8, align 1
  %9 = alloca %struct.s9, align 1
  %10 = alloca %struct.s10, align 1
  %11 = alloca %struct.s11, align 1
  %12 = alloca %struct.s12, align 1
  %13 = alloca %struct.s13, align 1
  %14 = alloca %struct.s14, align 1
  %15 = alloca %struct.s15, align 1
  %16 = alloca %struct.s16, align 1
  %17 = alloca %struct.s17, align 1
  %18 = alloca %struct.hfa11, align 4
  %19 = alloca %struct.hfa12, align 4
  %20 = alloca %struct.hfa12, align 4
  %21 = alloca %struct.hfa13, align 4
  %22 = alloca %struct.hfa13, align 4
  %23 = alloca %struct.hfa14, align 4
  %24 = alloca %struct.hfa14, align 4
  %25 = alloca %struct.hfa21, align 8
  %26 = alloca %struct.hfa22, align 8
  %27 = alloca %struct.hfa22, align 8
  %28 = alloca %struct.hfa23, align 8
  %29 = alloca %struct.hfa23, align 8
  %30 = alloca %struct.hfa24, align 8
  %31 = alloca %struct.hfa24, align 8
  %32 = alloca %struct.hfa31, align 16
  %33 = alloca fp128, align 16
  %34 = alloca %struct.hfa32, align 16
  %35 = alloca %struct.hfa32, align 16
  %36 = alloca fp128, align 16
  %37 = alloca fp128, align 16
  %38 = alloca %struct.hfa33, align 16
  %39 = alloca %struct.hfa33, align 16
  %40 = alloca fp128, align 16
  %41 = alloca fp128, align 16
  %42 = alloca %struct.hfa34, align 16
  %43 = alloca %struct.hfa34, align 16
  %44 = alloca fp128, align 16
  %45 = alloca fp128, align 16
  call void @fr_s1(%struct.s1* sret(%struct.s1) align 1 %1)
  call void @fr_s2(%struct.s2* sret(%struct.s2) align 1 %2)
  call void @fr_s3(%struct.s3* sret(%struct.s3) align 1 %3)
  call void @fr_s4(%struct.s4* sret(%struct.s4) align 1 %4)
  call void @fr_s5(%struct.s5* sret(%struct.s5) align 1 %5)
  call void @fr_s6(%struct.s6* sret(%struct.s6) align 1 %6)
  call void @fr_s7(%struct.s7* sret(%struct.s7) align 1 %7)
  call void @fr_s8(%struct.s8* sret(%struct.s8) align 1 %8)
  call void @fr_s9(%struct.s9* sret(%struct.s9) align 1 %9)
  call void @fr_s10(%struct.s10* sret(%struct.s10) align 1 %10)
  call void @fr_s11(%struct.s11* sret(%struct.s11) align 1 %11)
  call void @fr_s12(%struct.s12* sret(%struct.s12) align 1 %12)
  call void @fr_s13(%struct.s13* sret(%struct.s13) align 1 %13)
  call void @fr_s14(%struct.s14* sret(%struct.s14) align 1 %14)
  call void @fr_s15(%struct.s15* sret(%struct.s15) align 1 %15)
  call void @fr_s16(%struct.s16* sret(%struct.s16) align 1 %16)
  call void @fr_s17(%struct.s17* sret(%struct.s17) align 1 %17)
  %46 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.s1, %struct.s1* %1, i32 0, i32 0
  %48 = getelementptr inbounds [1 x i8], [1 x i8]* %47, i64 0, i64 0
  %49 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds %struct.s2, %struct.s2* %2, i32 0, i32 0
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %50, i64 0, i64 0
  %52 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = getelementptr inbounds %struct.s3, %struct.s3* %3, i32 0, i32 0
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %53, i64 0, i64 0
  %55 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds %struct.s4, %struct.s4* %4, i32 0, i32 0
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %56, i64 0, i64 0
  %58 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = getelementptr inbounds %struct.s5, %struct.s5* %5, i32 0, i32 0
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %59, i64 0, i64 0
  %61 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds %struct.s6, %struct.s6* %6, i32 0, i32 0
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %62, i64 0, i64 0
  %64 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = getelementptr inbounds %struct.s7, %struct.s7* %7, i32 0, i32 0
  %66 = getelementptr inbounds [7 x i8], [7 x i8]* %65, i64 0, i64 0
  %67 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  %68 = getelementptr inbounds %struct.s8, %struct.s8* %8, i32 0, i32 0
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %68, i64 0, i64 0
  %70 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  %71 = getelementptr inbounds %struct.s9, %struct.s9* %9, i32 0, i32 0
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %71, i64 0, i64 0
  %73 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds %struct.s10, %struct.s10* %10, i32 0, i32 0
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %74, i64 0, i64 0
  %76 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds %struct.s11, %struct.s11* %11, i32 0, i32 0
  %78 = getelementptr inbounds [11 x i8], [11 x i8]* %77, i64 0, i64 0
  %79 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %78)
  %80 = getelementptr inbounds %struct.s12, %struct.s12* %12, i32 0, i32 0
  %81 = getelementptr inbounds [12 x i8], [12 x i8]* %80, i64 0, i64 0
  %82 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %81)
  %83 = getelementptr inbounds %struct.s13, %struct.s13* %13, i32 0, i32 0
  %84 = getelementptr inbounds [13 x i8], [13 x i8]* %83, i64 0, i64 0
  %85 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %84)
  %86 = getelementptr inbounds %struct.s14, %struct.s14* %14, i32 0, i32 0
  %87 = getelementptr inbounds [14 x i8], [14 x i8]* %86, i64 0, i64 0
  %88 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds %struct.s15, %struct.s15* %15, i32 0, i32 0
  %90 = getelementptr inbounds [15 x i8], [15 x i8]* %89, i64 0, i64 0
  %91 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds %struct.s16, %struct.s16* %16, i32 0, i32 0
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %92, i64 0, i64 0
  %94 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %93)
  %95 = getelementptr inbounds %struct.s17, %struct.s17* %17, i32 0, i32 0
  %96 = getelementptr inbounds [17 x i8], [17 x i8]* %95, i64 0, i64 0
  %97 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %96)
  call void @fr_hfa11(%struct.hfa11* sret(%struct.hfa11) align 4 %18)
  %98 = getelementptr inbounds %struct.hfa11, %struct.hfa11* %18, i32 0, i32 0
  %99 = load float, float* %98, align 4
  %100 = fpext float %99 to double
  %101 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double %100)
  call void @fr_hfa12(%struct.hfa12* sret(%struct.hfa12) align 4 %19)
  %102 = getelementptr inbounds %struct.hfa12, %struct.hfa12* %19, i32 0, i32 0
  %103 = load float, float* %102, align 4
  %104 = fpext float %103 to double
  call void @fr_hfa12(%struct.hfa12* sret(%struct.hfa12) align 4 %20)
  %105 = getelementptr inbounds %struct.hfa12, %struct.hfa12* %20, i32 0, i32 1
  %106 = load float, float* %105, align 4
  %107 = fpext float %106 to double
  %108 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %104, double %107)
  call void @fr_hfa13(%struct.hfa13* sret(%struct.hfa13) align 4 %21)
  %109 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %21, i32 0, i32 0
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  call void @fr_hfa13(%struct.hfa13* sret(%struct.hfa13) align 4 %22)
  %112 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %22, i32 0, i32 2
  %113 = load float, float* %112, align 4
  %114 = fpext float %113 to double
  %115 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %111, double %114)
  call void @fr_hfa14(%struct.hfa14* sret(%struct.hfa14) align 4 %23)
  %116 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %23, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = fpext float %117 to double
  call void @fr_hfa14(%struct.hfa14* sret(%struct.hfa14) align 4 %24)
  %119 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %24, i32 0, i32 3
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %118, double %121)
  call void @fr_hfa21(%struct.hfa21* sret(%struct.hfa21) align 8 %25)
  %123 = getelementptr inbounds %struct.hfa21, %struct.hfa21* %25, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double %124)
  call void @fr_hfa22(%struct.hfa22* sret(%struct.hfa22) align 8 %26)
  %126 = getelementptr inbounds %struct.hfa22, %struct.hfa22* %26, i32 0, i32 0
  %127 = load double, double* %126, align 8
  call void @fr_hfa22(%struct.hfa22* sret(%struct.hfa22) align 8 %27)
  %128 = getelementptr inbounds %struct.hfa22, %struct.hfa22* %27, i32 0, i32 1
  %129 = load double, double* %128, align 8
  %130 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %127, double %129)
  call void @fr_hfa23(%struct.hfa23* sret(%struct.hfa23) align 8 %28)
  %131 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %28, i32 0, i32 0
  %132 = load double, double* %131, align 8
  call void @fr_hfa23(%struct.hfa23* sret(%struct.hfa23) align 8 %29)
  %133 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %29, i32 0, i32 2
  %134 = load double, double* %133, align 8
  %135 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %132, double %134)
  call void @fr_hfa24(%struct.hfa24* sret(%struct.hfa24) align 8 %30)
  %136 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %30, i32 0, i32 0
  %137 = load double, double* %136, align 8
  call void @fr_hfa24(%struct.hfa24* sret(%struct.hfa24) align 8 %31)
  %138 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %31, i32 0, i32 3
  %139 = load double, double* %138, align 8
  %140 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), double %137, double %139)
  call void @fr_hfa31(%struct.hfa31* sret(%struct.hfa31) align 16 %32)
  %141 = getelementptr inbounds %struct.hfa31, %struct.hfa31* %32, i32 0, i32 0
  %142 = load fp128, fp128* %141, align 16
  store fp128 %142, fp128* %33, align 16
  %143 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), fp128* %33)
  call void @fr_hfa32(%struct.hfa32* sret(%struct.hfa32) align 16 %34)
  %144 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %34, i32 0, i32 0
  %145 = load fp128, fp128* %144, align 16
  call void @fr_hfa32(%struct.hfa32* sret(%struct.hfa32) align 16 %35)
  %146 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %35, i32 0, i32 1
  %147 = load fp128, fp128* %146, align 16
  store fp128 %145, fp128* %36, align 16
  store fp128 %147, fp128* %37, align 16
  %148 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), fp128* %36, fp128* %37)
  call void @fr_hfa33(%struct.hfa33* sret(%struct.hfa33) align 16 %38)
  %149 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %38, i32 0, i32 0
  %150 = load fp128, fp128* %149, align 16
  call void @fr_hfa33(%struct.hfa33* sret(%struct.hfa33) align 16 %39)
  %151 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %39, i32 0, i32 2
  %152 = load fp128, fp128* %151, align 16
  store fp128 %150, fp128* %40, align 16
  store fp128 %152, fp128* %41, align 16
  %153 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), fp128* %40, fp128* %41)
  call void @fr_hfa34(%struct.hfa34* sret(%struct.hfa34) align 16 %42)
  %154 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %42, i32 0, i32 0
  %155 = load fp128, fp128* %154, align 16
  call void @fr_hfa34(%struct.hfa34* sret(%struct.hfa34) align 16 %43)
  %156 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %43, i32 0, i32 3
  %157 = load fp128, fp128* %156, align 16
  store fp128 %155, fp128* %44, align 16
  store fp128 %157, fp128* %45, align 16
  %158 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), fp128* %44, fp128* %45)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @match(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %19, %22
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i1 [ false, %11 ], [ %23, %16 ]
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %11, !llvm.loop !3

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8**, i8*** %4, align 8
  store i8* %38, i8** %39, align 8
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone
define dso_local void @myprintf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.s7, align 1
  %6 = alloca %struct.s9, align 1
  %7 = alloca %struct.hfa11, align 4
  %8 = alloca %struct.hfa12, align 4
  %9 = alloca %struct.hfa13, align 4
  %10 = alloca %struct.hfa14, align 4
  %11 = alloca %struct.hfa21, align 8
  %12 = alloca %struct.hfa22, align 8
  %13 = alloca %struct.hfa23, align 8
  %14 = alloca %struct.hfa24, align 8
  %15 = alloca %struct.hfa31, align 16
  %16 = alloca fp128, align 16
  %17 = alloca fp128, align 16
  %18 = alloca %struct.hfa32, align 16
  %19 = alloca fp128, align 16
  %20 = alloca fp128, align 16
  %21 = alloca %struct.hfa33, align 16
  %22 = alloca fp128, align 16
  %23 = alloca fp128, align 16
  %24 = alloca %struct.hfa34, align 16
  %25 = alloca fp128, align 16
  %26 = alloca fp128, align 16
  store i8* %0, i8** %2, align 8
  %27 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.va_start(i8* %27)
  %28 = load i8*, i8** %2, align 8
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %308, %1
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %311

33:                                               ; preds = %29
  %34 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, 8
  store i32 %41, i32* %39, align 8
  %42 = getelementptr i8, i8* %38, i32 %40
  %43 = bitcast i8* %42 to %struct.s7*
  %44 = bitcast %struct.s7* %5 to i8*
  %45 = bitcast %struct.s7* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 8 %45, i64 7, i1 false)
  %46 = getelementptr inbounds %struct.s7, %struct.s7* %5, i32 0, i32 0
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %46, i64 0, i64 0
  %48 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* %47)
  br label %307

49:                                               ; preds = %33
  %50 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, 16
  store i32 %57, i32* %55, align 8
  %58 = getelementptr i8, i8* %54, i32 %56
  %59 = bitcast i8* %58 to %struct.s9*
  %60 = bitcast %struct.s9* %6 to i8*
  %61 = bitcast %struct.s9* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %60, i8* align 8 %61, i64 9, i1 false)
  %62 = getelementptr inbounds %struct.s9, %struct.s9* %6, i32 0, i32 0
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %62, i64 0, i64 0
  %64 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* %63)
  br label %306

65:                                               ; preds = %49
  %66 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add i32 %72, 8
  store i32 %73, i32* %71, align 8
  %74 = getelementptr i8, i8* %70, i32 %72
  %75 = bitcast i8* %74 to %struct.hfa11*
  %76 = bitcast %struct.hfa11* %7 to i8*
  %77 = bitcast %struct.hfa11* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 8 %77, i64 4, i1 false)
  %78 = getelementptr inbounds %struct.hfa11, %struct.hfa11* %7, i32 0, i32 0
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = getelementptr inbounds %struct.hfa11, %struct.hfa11* %7, i32 0, i32 0
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %80, double %83)
  br label %305

85:                                               ; preds = %65
  %86 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %92, 8
  store i32 %93, i32* %91, align 8
  %94 = getelementptr i8, i8* %90, i32 %92
  %95 = bitcast i8* %94 to %struct.hfa12*
  %96 = bitcast %struct.hfa12* %8 to i8*
  %97 = bitcast %struct.hfa12* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 8 %97, i64 8, i1 false)
  %98 = getelementptr inbounds %struct.hfa12, %struct.hfa12* %8, i32 0, i32 0
  %99 = load float, float* %98, align 4
  %100 = fpext float %99 to double
  %101 = getelementptr inbounds %struct.hfa12, %struct.hfa12* %8, i32 0, i32 1
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %100, double %103)
  br label %304

105:                                              ; preds = %85
  %106 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %112, 16
  store i32 %113, i32* %111, align 8
  %114 = getelementptr i8, i8* %110, i32 %112
  %115 = bitcast i8* %114 to %struct.hfa13*
  %116 = bitcast %struct.hfa13* %9 to i8*
  %117 = bitcast %struct.hfa13* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 8 %117, i64 12, i1 false)
  %118 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %9, i32 0, i32 0
  %119 = load float, float* %118, align 4
  %120 = fpext float %119 to double
  %121 = getelementptr inbounds %struct.hfa13, %struct.hfa13* %9, i32 0, i32 2
  %122 = load float, float* %121, align 4
  %123 = fpext float %122 to double
  %124 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %120, double %123)
  br label %303

125:                                              ; preds = %105
  %126 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add i32 %132, 16
  store i32 %133, i32* %131, align 8
  %134 = getelementptr i8, i8* %130, i32 %132
  %135 = bitcast i8* %134 to %struct.hfa14*
  %136 = bitcast %struct.hfa14* %10 to i8*
  %137 = bitcast %struct.hfa14* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 8 %137, i64 16, i1 false)
  %138 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %10, i32 0, i32 0
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  %141 = getelementptr inbounds %struct.hfa14, %struct.hfa14* %10, i32 0, i32 3
  %142 = load float, float* %141, align 4
  %143 = fpext float %142 to double
  %144 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %140, double %143)
  br label %302

145:                                              ; preds = %125
  %146 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = add i32 %152, 8
  store i32 %153, i32* %151, align 8
  %154 = getelementptr i8, i8* %150, i32 %152
  %155 = bitcast i8* %154 to %struct.hfa21*
  %156 = bitcast %struct.hfa21* %11 to i8*
  %157 = bitcast %struct.hfa21* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 8, i1 false)
  %158 = getelementptr inbounds %struct.hfa21, %struct.hfa21* %11, i32 0, i32 0
  %159 = load double, double* %158, align 8
  %160 = getelementptr inbounds %struct.hfa21, %struct.hfa21* %11, i32 0, i32 0
  %161 = load double, double* %160, align 8
  %162 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %159, double %161)
  br label %301

163:                                              ; preds = %145
  %164 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = add i32 %170, 16
  store i32 %171, i32* %169, align 8
  %172 = getelementptr i8, i8* %168, i32 %170
  %173 = bitcast i8* %172 to %struct.hfa22*
  %174 = bitcast %struct.hfa22* %12 to i8*
  %175 = bitcast %struct.hfa22* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 16, i1 false)
  %176 = getelementptr inbounds %struct.hfa22, %struct.hfa22* %12, i32 0, i32 0
  %177 = load double, double* %176, align 8
  %178 = getelementptr inbounds %struct.hfa22, %struct.hfa22* %12, i32 0, i32 1
  %179 = load double, double* %178, align 8
  %180 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %177, double %179)
  br label %300

181:                                              ; preds = %163
  %182 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = add i32 %188, 24
  store i32 %189, i32* %187, align 8
  %190 = getelementptr i8, i8* %186, i32 %188
  %191 = bitcast i8* %190 to %struct.hfa23*
  %192 = bitcast %struct.hfa23* %13 to i8*
  %193 = bitcast %struct.hfa23* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 24, i1 false)
  %194 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %13, i32 0, i32 0
  %195 = load double, double* %194, align 8
  %196 = getelementptr inbounds %struct.hfa23, %struct.hfa23* %13, i32 0, i32 2
  %197 = load double, double* %196, align 8
  %198 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %195, double %197)
  br label %299

199:                                              ; preds = %181
  %200 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = add i32 %206, 32
  store i32 %207, i32* %205, align 8
  %208 = getelementptr i8, i8* %204, i32 %206
  %209 = bitcast i8* %208 to %struct.hfa24*
  %210 = bitcast %struct.hfa24* %14 to i8*
  %211 = bitcast %struct.hfa24* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 32, i1 false)
  %212 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %14, i32 0, i32 0
  %213 = load double, double* %212, align 8
  %214 = getelementptr inbounds %struct.hfa24, %struct.hfa24* %14, i32 0, i32 3
  %215 = load double, double* %214, align 8
  %216 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), double %213, double %215)
  br label %298

217:                                              ; preds = %199
  %218 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = add i32 %224, 16
  store i32 %225, i32* %223, align 8
  %226 = getelementptr i8, i8* %222, i32 %224
  %227 = bitcast i8* %226 to %struct.hfa31*
  %228 = bitcast %struct.hfa31* %15 to i8*
  %229 = bitcast %struct.hfa31* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %228, i8* align 8 %229, i64 16, i1 false)
  %230 = getelementptr inbounds %struct.hfa31, %struct.hfa31* %15, i32 0, i32 0
  %231 = load fp128, fp128* %230, align 16
  %232 = getelementptr inbounds %struct.hfa31, %struct.hfa31* %15, i32 0, i32 0
  %233 = load fp128, fp128* %232, align 16
  store fp128 %231, fp128* %16, align 16
  store fp128 %233, fp128* %17, align 16
  %234 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), fp128* %16, fp128* %17)
  br label %297

235:                                              ; preds = %217
  %236 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0))
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = add i32 %242, 32
  store i32 %243, i32* %241, align 8
  %244 = getelementptr i8, i8* %240, i32 %242
  %245 = bitcast i8* %244 to %struct.hfa32*
  %246 = bitcast %struct.hfa32* %18 to i8*
  %247 = bitcast %struct.hfa32* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %246, i8* align 8 %247, i64 32, i1 false)
  %248 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %18, i32 0, i32 0
  %249 = load fp128, fp128* %248, align 16
  %250 = getelementptr inbounds %struct.hfa32, %struct.hfa32* %18, i32 0, i32 1
  %251 = load fp128, fp128* %250, align 16
  store fp128 %249, fp128* %19, align 16
  store fp128 %251, fp128* %20, align 16
  %252 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), fp128* %19, fp128* %20)
  br label %296

253:                                              ; preds = %235
  %254 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = add i32 %260, 48
  store i32 %261, i32* %259, align 8
  %262 = getelementptr i8, i8* %258, i32 %260
  %263 = bitcast i8* %262 to %struct.hfa33*
  %264 = bitcast %struct.hfa33* %21 to i8*
  %265 = bitcast %struct.hfa33* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %264, i8* align 8 %265, i64 48, i1 false)
  %266 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %21, i32 0, i32 0
  %267 = load fp128, fp128* %266, align 16
  %268 = getelementptr inbounds %struct.hfa33, %struct.hfa33* %21, i32 0, i32 2
  %269 = load fp128, fp128* %268, align 16
  store fp128 %267, fp128* %22, align 16
  store fp128 %269, fp128* %23, align 16
  %270 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), fp128* %22, fp128* %23)
  br label %295

271:                                              ; preds = %253
  %272 = call signext i32 @match(i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = add i32 %278, 64
  store i32 %279, i32* %277, align 8
  %280 = getelementptr i8, i8* %276, i32 %278
  %281 = bitcast i8* %280 to %struct.hfa34*
  %282 = bitcast %struct.hfa34* %24 to i8*
  %283 = bitcast %struct.hfa34* %281 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %282, i8* align 8 %283, i64 64, i1 false)
  %284 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %24, i32 0, i32 0
  %285 = load fp128, fp128* %284, align 16
  %286 = getelementptr inbounds %struct.hfa34, %struct.hfa34* %24, i32 0, i32 3
  %287 = load fp128, fp128* %286, align 16
  store fp128 %285, fp128* %25, align 16
  store fp128 %287, fp128* %26, align 16
  %288 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), fp128* %25, fp128* %26)
  br label %294

289:                                              ; preds = %271
  %290 = load i8*, i8** %3, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = call signext i32 @putchar(i32 signext %292)
  br label %294

294:                                              ; preds = %289, %274
  br label %295

295:                                              ; preds = %294, %256
  br label %296

296:                                              ; preds = %295, %238
  br label %297

297:                                              ; preds = %296, %220
  br label %298

298:                                              ; preds = %297, %202
  br label %299

299:                                              ; preds = %298, %184
  br label %300

300:                                              ; preds = %299, %166
  br label %301

301:                                              ; preds = %300, %148
  br label %302

302:                                              ; preds = %301, %128
  br label %303

303:                                              ; preds = %302, %108
  br label %304

304:                                              ; preds = %303, %88
  br label %305

305:                                              ; preds = %304, %68
  br label %306

306:                                              ; preds = %305, %52
  br label %307

307:                                              ; preds = %306, %36
  br label %308

308:                                              ; preds = %307
  %309 = load i8*, i8** %3, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %3, align 8
  br label %29, !llvm.loop !5

311:                                              ; preds = %29
  %312 = call signext i32 @putchar(i32 signext 10)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

declare dso_local signext i32 @putchar(i32 signext) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @stdarg() #0 {
  %1 = alloca { i64, i64 }, align 1
  %2 = alloca { i64, i64 }, align 1
  %3 = alloca { i64, i64 }, align 1
  %4 = alloca { i64, i64 }, align 1
  %5 = alloca { i64, i64 }, align 1
  %6 = alloca { i64, i64 }, align 1
  %7 = alloca { i64 }, align 1
  %8 = alloca { i64, i64 }, align 1
  %9 = alloca { i64, i64 }, align 1
  %10 = alloca { i64, i64 }, align 1
  %11 = alloca { i64, i64 }, align 1
  %12 = alloca { i64, i64 }, align 1
  %13 = alloca { i64, i64 }, align 4
  %14 = alloca { i64 }, align 4
  %15 = alloca { i64, i64 }, align 4
  %16 = alloca { i64, i64 }, align 4
  %17 = alloca { i64, i64 }, align 4
  %18 = alloca { i64, i64 }, align 4
  %19 = alloca { i64 }, align 4
  %20 = alloca { i64, i64 }, align 4
  %21 = alloca { i64, i64 }, align 4
  %22 = alloca { i64, i64 }, align 4
  %23 = alloca { i64, i64 }, align 4
  %24 = alloca { i64, i64 }, align 4
  %25 = alloca { i64, i64 }, align 4
  %26 = alloca { i64, i64 }, align 4
  %27 = alloca { i64, i64 }, align 4
  %28 = alloca { i64, i64 }, align 4
  %29 = alloca { i64 }, align 4
  %30 = alloca { i64 }, align 4
  %31 = alloca { i64 }, align 4
  %32 = alloca { i64 }, align 4
  %33 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0))
  %34 = bitcast { i64, i64 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %36 = load i64, i64* %35, align 1
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %38 = load i64, i64* %37, align 1
  %39 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %41 = load i64, i64* %40, align 1
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %43 = load i64, i64* %42, align 1
  %44 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %46 = load i64, i64* %45, align 1
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %48 = load i64, i64* %47, align 1
  %49 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %51 = load i64, i64* %50, align 1
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %53 = load i64, i64* %52, align 1
  %54 = bitcast { i64, i64 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 1
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %58 = load i64, i64* %57, align 1
  %59 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 1
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %63 = load i64, i64* %62, align 1
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i64 inreg %36, i64 inreg %38, i64 inreg %41, i64 inreg %43, i64 inreg %46, i64 inreg %48, i64 inreg %51, i64 inreg %53, i64 inreg %56, i64 inreg %58, i64 inreg %61, i64 inreg %63)
  %64 = bitcast { i64 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 getelementptr inbounds (%struct.s7, %struct.s7* @s7, i32 0, i32 0, i32 0), i64 7, i1 false)
  %65 = getelementptr inbounds { i64 }, { i64 }* %7, i32 0, i32 0
  %66 = load i64, i64* %65, align 1
  %67 = bitcast { i64, i64 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 1
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %71 = load i64, i64* %70, align 1
  %72 = bitcast { i64, i64 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %72, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %74 = load i64, i64* %73, align 1
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %76 = load i64, i64* %75, align 1
  %77 = bitcast { i64, i64 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 1
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %81 = load i64, i64* %80, align 1
  %82 = bitcast { i64, i64 }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 1
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %86 = load i64, i64* %85, align 1
  %87 = bitcast { i64, i64 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 getelementptr inbounds (%struct.s9, %struct.s9* @s9, i32 0, i32 0, i32 0), i64 9, i1 false)
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %89 = load i64, i64* %88, align 1
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %91 = load i64, i64* %90, align 1
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0), i64 inreg %66, i64 inreg %69, i64 inreg %71, i64 inreg %74, i64 inreg %76, i64 inreg %79, i64 inreg %81, i64 inreg %84, i64 inreg %86, i64 inreg %89, i64 inreg %91)
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0))
  %92 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %93 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %94 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %95 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %96 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %97 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %98 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %99 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %100 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %101 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %102 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %103 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %104 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %105 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %106 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %107 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %108 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %109 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %110 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %111 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %112 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %113 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %114 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %115 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %116 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %117 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %118 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %119 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %120 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %121 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %122 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %123 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i64 0, i64 0), i64 undef, i64 inreg %92, i64 inreg %93, i64 inreg %94, i64 inreg %95, i64 inreg %96, i64 inreg %97, i64 inreg %98, i64 inreg %99, i64 inreg %100, i64 inreg %101, i64 inreg %102, i64 inreg %103, i64 inreg %104, i64 inreg %105, i64 inreg %106, i64 inreg %107, i64 inreg %108, i64 inreg %109, i64 inreg %110, i64 inreg %111, i64 inreg %112, i64 inreg %113, i64 inreg %114, i64 inreg %115, i64 inreg %116, i64 inreg %117, i64 inreg %118, i64 inreg %119, i64 inreg %120, i64 inreg %121, i64 inreg %122, i64 inreg %123)
  %124 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %125 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %126 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %127 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %128 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %129 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %130 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %131 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %132 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %133 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %134 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %135 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %136 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %137 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %138 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %139 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %140 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %141 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %142 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %143 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %144 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %145 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %146 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %147 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %148 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %149 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %150 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %151 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %152 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %153 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0), i64 inreg %124, i64 inreg %125, i64 inreg %126, i64 inreg %127, i64 inreg %128, i64 inreg %129, i64 inreg %130, i64 inreg %131, i64 inreg %132, i64 inreg %133, i64 inreg %134, i64 inreg %135, i64 inreg %136, i64 inreg %137, i64 inreg %138, i64 inreg %139, i64 inreg %140, i64 inreg %141, i64 inreg %142, i64 inreg %143, i64 inreg %144, i64 inreg %145, i64 inreg %146, i64 inreg %147, i64 inreg %148, i64 inreg %149, i64 inreg %150, i64 inreg %151, i64 inreg %152, i64 inreg %153)
  %154 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %155 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %156 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %157 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %158 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %159 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %160 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %161 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %162 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %163 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %164 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %165 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %166 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %167 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %168 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %169 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %170 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %171 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %172 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %173 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %174 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %175 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %176 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %177 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %178 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %179 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %180 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %181 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i64 inreg %154, i64 inreg %155, i64 inreg %156, i64 inreg %157, i64 inreg %158, i64 inreg %159, i64 inreg %160, i64 inreg %161, i64 inreg %162, i64 inreg %163, i64 inreg %164, i64 inreg %165, i64 inreg %166, i64 inreg %167, i64 inreg %168, i64 inreg %169, i64 inreg %170, i64 inreg %171, i64 inreg %172, i64 inreg %173, i64 inreg %174, i64 inreg %175, i64 inreg %176, i64 inreg %177, i64 inreg %178, i64 inreg %179, i64 inreg %180, i64 inreg %181)
  %182 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %183 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  %184 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %185 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %186 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %187 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %188 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %189 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %190 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %191 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %192 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %193 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %194 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %195 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %196 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %197 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %198 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %199 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %200 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %201 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %202 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %203 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %204 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %205 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %206 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %207 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 inreg %182, i64 inreg %183, i64 inreg %184, i64 inreg %185, i64 inreg %186, i64 inreg %187, i64 inreg %188, i64 inreg %189, i64 inreg %190, i64 inreg %191, i64 inreg %192, i64 inreg %193, i64 inreg %194, i64 inreg %195, i64 inreg %196, i64 inreg %197, i64 inreg %198, i64 inreg %199, i64 inreg %200, i64 inreg %201, i64 inreg %202, i64 inreg %203, i64 inreg %204, i64 inreg %205, i64 inreg %206, i64 inreg %207)
  %208 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %209 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %210 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %211 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %212 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %213 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %214 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %215 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %216 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %217 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %218 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %219 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %220 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %221 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %222 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %223 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %224 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %225 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %226 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %227 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %228 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %229 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %230 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %231 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %232 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %233 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %234 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %235 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i64 0, i64 0), i64 inreg %208, i64 inreg %209, i64 inreg %210, i64 inreg %211, i64 inreg %212, i64 inreg %213, i64 inreg %214, i64 inreg %215, i64 inreg %216, i64 inreg %217, i64 inreg %218, i64 inreg %219, i64 inreg %220, i64 inreg %221, i64 inreg %222, i64 inreg %223, i64 inreg %224, i64 inreg %225, i64 inreg %226, i64 inreg %227, i64 inreg %228, i64 inreg %229, i64 inreg %230, i64 inreg %231, i64 inreg %232, i64 inreg %233, i64 inreg %234, i64 inreg %235)
  %236 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %237 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  %238 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %239 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %240 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %241 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %242 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %243 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %244 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %245 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %246 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %247 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %248 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %249 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %250 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %251 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %252 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %253 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %254 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %255 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %256 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %257 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %258 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %259 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %260 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %261 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i64 inreg %236, i64 inreg %237, i64 inreg %238, i64 inreg %239, i64 inreg %240, i64 inreg %241, i64 inreg %242, i64 inreg %243, i64 inreg %244, i64 inreg %245, i64 inreg %246, i64 inreg %247, i64 inreg %248, i64 inreg %249, i64 inreg %250, i64 inreg %251, i64 inreg %252, i64 inreg %253, i64 inreg %254, i64 inreg %255, i64 inreg %256, i64 inreg %257, i64 inreg %258, i64 inreg %259, i64 inreg %260, i64 inreg %261)
  %262 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %263 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %264 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %265 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %266 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %267 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %268 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %269 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %270 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %271 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %272 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %273 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %274 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %275 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %276 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %277 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %278 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %279 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %280 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %281 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %282 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %283 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %284 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %285 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i64 0, i64 0), i64 inreg %262, i64 inreg %263, i64 inreg %264, i64 inreg %265, i64 inreg %266, i64 inreg %267, i64 inreg %268, i64 inreg %269, i64 inreg %270, i64 inreg %271, i64 inreg %272, i64 inreg %273, i64 inreg %274, i64 inreg %275, i64 inreg %276, i64 inreg %277, i64 inreg %278, i64 inreg %279, i64 inreg %280, i64 inreg %281, i64 inreg %282, i64 inreg %283, i64 inreg %284, i64 inreg %285)
  %286 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %287 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %288 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %289 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %290 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %291 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %292 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %293 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %294 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %295 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %296 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %297 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %298 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %299 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %300 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %301 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %302 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %303 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %304 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %305 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %306 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %307 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %308 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %309 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i64 undef, i64 inreg %286, i64 inreg %287, i64 inreg %288, i64 inreg %289, i64 inreg %290, i64 inreg %291, i64 inreg %292, i64 inreg %293, i64 inreg %294, i64 inreg %295, i64 inreg %296, i64 inreg %297, i64 inreg %298, i64 inreg %299, i64 inreg %300, i64 inreg %301, i64 inreg %302, i64 inreg %303, i64 inreg %304, i64 inreg %305, i64 inreg %306, i64 inreg %307, i64 inreg %308, i64 inreg %309)
  %310 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %311 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %312 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %313 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %314 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %315 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa33* @hfa33 to { i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %316 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %317 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %318 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %319 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %320 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %321 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %322 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %323 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %324 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %325 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %326 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %327 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %328 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %329 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %330 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %331 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0), i64 inreg %310, i64 inreg %311, i64 inreg %312, i64 inreg %313, i64 inreg %314, i64 inreg %315, i64 inreg %316, i64 inreg %317, i64 inreg %318, i64 inreg %319, i64 inreg %320, i64 inreg %321, i64 inreg %322, i64 inreg %323, i64 inreg %324, i64 inreg %325, i64 inreg %326, i64 inreg %327, i64 inreg %328, i64 inreg %329, i64 inreg %330, i64 inreg %331)
  %332 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %333 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %334 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %335 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %336 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 4), align 16
  %337 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 5), align 8
  %338 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 6), align 16
  %339 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64, i64, i64, i64, i64 }, { i64, i64, i64, i64, i64, i64, i64, i64 }* bitcast (%struct.hfa34* @hfa34 to { i64, i64, i64, i64, i64, i64, i64, i64 }*), i32 0, i32 7), align 8
  %340 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 16
  %341 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %342 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 16
  %343 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa32* @hfa32 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %344 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %345 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  %346 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %347 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  %348 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %349 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  %350 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 0), align 16
  %351 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa31* @hfa31 to { i64, i64 }*), i32 0, i32 1), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.61, i64 0, i64 0), i64 undef, i64 inreg %332, i64 inreg %333, i64 inreg %334, i64 inreg %335, i64 inreg %336, i64 inreg %337, i64 inreg %338, i64 inreg %339, i64 inreg %340, i64 inreg %341, i64 inreg %342, i64 inreg %343, i64 inreg %344, i64 inreg %345, i64 inreg %346, i64 inreg %347, i64 inreg %348, i64 inreg %349, i64 inreg %350, i64 inreg %351)
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0))
  %352 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %353 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %354 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %355 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %356 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %357 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %358 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %359 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %360 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %361 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %362 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %363 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %364 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %365 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %366 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %367 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i64 inreg %352, i64 inreg %353, i64 inreg %354, i64 inreg %355, i64 inreg %356, i64 inreg %357, i64 inreg %358, i64 inreg %359, i64 inreg %360, i64 inreg %361, i64 inreg %362, i64 inreg %363, i64 inreg %364, i64 inreg %365, i64 inreg %366, i64 inreg %367)
  %368 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %369 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %370 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %371 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %372 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %373 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %374 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %375 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %376 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %377 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %378 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %379 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %380 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %381 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %382 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0), i64 inreg %368, i64 inreg %369, i64 inreg %370, i64 inreg %371, i64 inreg %372, i64 inreg %373, i64 inreg %374, i64 inreg %375, i64 inreg %376, i64 inreg %377, i64 inreg %378, i64 inreg %379, i64 inreg %380, i64 inreg %381, i64 inreg %382)
  %383 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %384 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %385 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %386 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %387 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %388 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %389 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %390 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %391 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %392 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %393 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %394 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %395 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %396 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i64 inreg %383, i64 inreg %384, i64 inreg %385, i64 inreg %386, i64 inreg %387, i64 inreg %388, i64 inreg %389, i64 inreg %390, i64 inreg %391, i64 inreg %392, i64 inreg %393, i64 inreg %394, i64 inreg %395, i64 inreg %396)
  %397 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  %398 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %399 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %400 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %401 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %402 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %403 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %404 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %405 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %406 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %407 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %408 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %409 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i64 inreg %397, i64 inreg %398, i64 inreg %399, i64 inreg %400, i64 inreg %401, i64 inreg %402, i64 inreg %403, i64 inreg %404, i64 inreg %405, i64 inreg %406, i64 inreg %407, i64 inreg %408, i64 inreg %409)
  %410 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %411 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %412 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %413 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %414 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %415 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %416 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %417 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %418 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %419 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %420 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %421 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %422 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %423 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i64 0, i64 0), i64 inreg %410, i64 inreg %411, i64 inreg %412, i64 inreg %413, i64 inreg %414, i64 inreg %415, i64 inreg %416, i64 inreg %417, i64 inreg %418, i64 inreg %419, i64 inreg %420, i64 inreg %421, i64 inreg %422, i64 inreg %423)
  %424 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  %425 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %426 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %427 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %428 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %429 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %430 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %431 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %432 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %433 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %434 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %435 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %436 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0), i64 inreg %424, i64 inreg %425, i64 inreg %426, i64 inreg %427, i64 inreg %428, i64 inreg %429, i64 inreg %430, i64 inreg %431, i64 inreg %432, i64 inreg %433, i64 inreg %434, i64 inreg %435, i64 inreg %436)
  %437 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %438 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %439 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %440 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %441 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %442 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %443 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %444 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %445 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %446 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %447 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %448 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i64 0, i64 0), i64 inreg %437, i64 inreg %438, i64 inreg %439, i64 inreg %440, i64 inreg %441, i64 inreg %442, i64 inreg %443, i64 inreg %444, i64 inreg %445, i64 inreg %446, i64 inreg %447, i64 inreg %448)
  %449 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %450 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %451 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %452 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %453 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %454 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %455 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %456 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %457 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %458 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %459 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %460 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), i64 inreg %449, i64 inreg %450, i64 inreg %451, i64 inreg %452, i64 inreg %453, i64 inreg %454, i64 inreg %455, i64 inreg %456, i64 inreg %457, i64 inreg %458, i64 inreg %459, i64 inreg %460)
  %461 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 0), align 8
  %462 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 1), align 8
  %463 = load i64, i64* getelementptr inbounds ({ i64, i64, i64 }, { i64, i64, i64 }* bitcast (%struct.hfa23* @hfa23 to { i64, i64, i64 }*), i32 0, i32 2), align 8
  %464 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %465 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %466 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %467 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %468 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %469 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %470 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %471 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.71, i64 0, i64 0), i64 inreg %461, i64 inreg %462, i64 inreg %463, i64 inreg %464, i64 inreg %465, i64 inreg %466, i64 inreg %467, i64 inreg %468, i64 inreg %469, i64 inreg %470, i64 inreg %471)
  %472 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 0), align 8
  %473 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 1), align 8
  %474 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 2), align 8
  %475 = load i64, i64* getelementptr inbounds ({ i64, i64, i64, i64 }, { i64, i64, i64, i64 }* bitcast (%struct.hfa24* @hfa24 to { i64, i64, i64, i64 }*), i32 0, i32 3), align 8
  %476 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 0), align 8
  %477 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa22* @hfa22 to { i64, i64 }*), i32 0, i32 1), align 8
  %478 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  %479 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  %480 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  %481 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa21* @hfa21 to { i64 }*), i32 0, i32 0), align 8
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i64 0, i64 0), i64 inreg %472, i64 inreg %473, i64 inreg %474, i64 inreg %475, i64 inreg %476, i64 inreg %477, i64 inreg %478, i64 inreg %479, i64 inreg %480, i64 inreg %481)
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0))
  %482 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %483 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %484 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %485 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %486 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %487 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %488 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %489 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i64 0, i64 0), i64 inreg %482, i64 inreg %483, i64 inreg %484, i64 inreg %485, i64 inreg %486, i64 inreg %487, i64 inreg %488, i64 inreg %489)
  %490 = bitcast { i64, i64 }* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %490, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %491 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %492 = load i64, i64* %491, align 4
  %493 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %494 = load i64, i64* %493, align 4
  %495 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %496 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %497 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %498 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %499 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %500 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i64 0, i64 0), i64 inreg %492, i64 inreg %494, i64 inreg %495, i64 inreg %496, i64 inreg %497, i64 inreg %498, i64 inreg %499, i64 inreg %500)
  %501 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %502 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %503 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %504 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %505 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %506 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %507 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0), i64 inreg %501, i64 inreg %502, i64 inreg %503, i64 inreg %504, i64 inreg %505, i64 inreg %506, i64 inreg %507)
  %508 = bitcast { i64 }* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %508, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %509 = getelementptr inbounds { i64 }, { i64 }* %14, i32 0, i32 0
  %510 = load i64, i64* %509, align 4
  %511 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %512 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %513 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %514 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %515 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %516 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i64 inreg %510, i64 inreg %511, i64 inreg %512, i64 inreg %513, i64 inreg %514, i64 inreg %515, i64 inreg %516)
  %517 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %518 = bitcast { i64, i64 }* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %518, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %519 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %520 = load i64, i64* %519, align 4
  %521 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %522 = load i64, i64* %521, align 4
  %523 = bitcast { i64, i64 }* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %523, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %524 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %525 = load i64, i64* %524, align 4
  %526 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %527 = load i64, i64* %526, align 4
  %528 = bitcast { i64, i64 }* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %528, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %529 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %530 = load i64, i64* %529, align 4
  %531 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %532 = load i64, i64* %531, align 4
  %533 = bitcast { i64, i64 }* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %533, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %534 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %535 = load i64, i64* %534, align 4
  %536 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %537 = load i64, i64* %536, align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i64 0, i64 0), i64 inreg %517, i64 inreg %520, i64 inreg %522, i64 inreg %525, i64 inreg %527, i64 inreg %530, i64 inreg %532, i64 inreg %535, i64 inreg %537)
  %538 = bitcast { i64 }* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %538, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %539 = getelementptr inbounds { i64 }, { i64 }* %19, i32 0, i32 0
  %540 = load i64, i64* %539, align 4
  %541 = bitcast { i64, i64 }* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %541, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %542 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %543 = load i64, i64* %542, align 4
  %544 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %545 = load i64, i64* %544, align 4
  %546 = bitcast { i64, i64 }* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %546, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %547 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %548 = load i64, i64* %547, align 4
  %549 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %550 = load i64, i64* %549, align 4
  %551 = bitcast { i64, i64 }* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %551, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %552 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %553 = load i64, i64* %552, align 4
  %554 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %555 = load i64, i64* %554, align 4
  %556 = bitcast { i64, i64 }* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %556, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %557 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %558 = load i64, i64* %557, align 4
  %559 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %560 = load i64, i64* %559, align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i64 0, i64 0), i64 inreg %540, i64 inreg %543, i64 inreg %545, i64 inreg %548, i64 inreg %550, i64 inreg %553, i64 inreg %555, i64 inreg %558, i64 inreg %560)
  %561 = bitcast { i64, i64 }* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %561, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %562 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %563 = load i64, i64* %562, align 4
  %564 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %565 = load i64, i64* %564, align 4
  %566 = bitcast { i64, i64 }* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %566, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %567 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %568 = load i64, i64* %567, align 4
  %569 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %570 = load i64, i64* %569, align 4
  %571 = bitcast { i64, i64 }* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %571, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %572 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %573 = load i64, i64* %572, align 4
  %574 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %575 = load i64, i64* %574, align 4
  %576 = bitcast { i64, i64 }* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %576, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %577 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %578 = load i64, i64* %577, align 4
  %579 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %580 = load i64, i64* %579, align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i64 0, i64 0), i64 inreg %563, i64 inreg %565, i64 inreg %568, i64 inreg %570, i64 inreg %573, i64 inreg %575, i64 inreg %578, i64 inreg %580)
  %581 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %582 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %583 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %584 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %585 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %586 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0), i64 inreg %581, i64 inreg %582, i64 inreg %583, i64 inreg %584, i64 inreg %585, i64 inreg %586)
  %587 = bitcast { i64, i64 }* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %587, i8* align 4 bitcast (%struct.hfa13* @hfa13 to i8*), i64 12, i1 false)
  %588 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %589 = load i64, i64* %588, align 4
  %590 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %591 = load i64, i64* %590, align 4
  %592 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %593 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %594 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %595 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i64 0, i64 0), i64 inreg %589, i64 inreg %591, i64 inreg %592, i64 inreg %593, i64 inreg %594, i64 inreg %595)
  %596 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 0), align 4
  %597 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.hfa14* @hfa14 to { i64, i64 }*), i32 0, i32 1), align 4
  %598 = load i64, i64* getelementptr inbounds ({ i64 }, { i64 }* bitcast (%struct.hfa12* @hfa12 to { i64 }*), i32 0, i32 0), align 4
  %599 = bitcast { i64 }* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %599, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %600 = getelementptr inbounds { i64 }, { i64 }* %29, i32 0, i32 0
  %601 = load i64, i64* %600, align 4
  %602 = bitcast { i64 }* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %602, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %603 = getelementptr inbounds { i64 }, { i64 }* %30, i32 0, i32 0
  %604 = load i64, i64* %603, align 4
  %605 = bitcast { i64 }* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %605, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %606 = getelementptr inbounds { i64 }, { i64 }* %31, i32 0, i32 0
  %607 = load i64, i64* %606, align 4
  %608 = bitcast { i64 }* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %608, i8* align 4 bitcast (%struct.hfa11* @hfa11 to i8*), i64 4, i1 false)
  %609 = getelementptr inbounds { i64 }, { i64 }* %32, i32 0, i32 0
  %610 = load i64, i64* %609, align 4
  call void (i8*, ...) @myprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.83, i64 0, i64 0), i64 inreg %596, i64 inreg %597, i64 inreg %598, i64 inreg %601, i64 inreg %604, i64 inreg %607, i64 inreg %610)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @pll(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 zeroext %3)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @movi() #0 {
  %1 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0))
  call void @pll(i64 zeroext 0)
  call void @pll(i64 zeroext 43981)
  call void @pll(i64 zeroext 2882338816)
  call void @pll(i64 zeroext 188896956645376)
  call void @pll(i64 zeroext -6067193122998190080)
  call void @pll(i64 zeroext 4294945741)
  call void @pll(i64 zeroext 2882404351)
  call void @pll(i64 zeroext -21555)
  call void @pll(i64 zeroext -1412562945)
  call void @pll(i64 zeroext -92573725097985)
  call void @pll(i64 zeroext -6066911648021479425)
  call void @pll(i64 zeroext 2863311530)
  call void @pll(i64 zeroext 6148914691236517205)
  call void @pll(i64 zeroext 2004318071)
  call void @pll(i64 zeroext 3689348814741910323)
  call void @pll(i64 zeroext 4177066232)
  call void @pll(i64 zeroext 2170205185142300190)
  call void @pll(i64 zeroext 1065369472)
  call void @pll(i64 zeroext 143835907860922879)
  call void @pll(i64 zeroext 8388544)
  call void @pll(i64 zeroext 288221580125796352)
  call void @pll(i64 zeroext 2251799813684736)
  call void @pll(i64 zeroext 2882343476)
  call void @pll(i64 zeroext 188896956650036)
  call void @pll(i64 zeroext -6067193122998185420)
  call void @pll(i64 zeroext 188897262043136)
  call void @pll(i64 zeroext -6067193122692792320)
  call void @pll(i64 zeroext -6067173108450590720)
  call void @pll(i64 zeroext -1412623820)
  call void @pll(i64 zeroext -92573725158860)
  call void @pll(i64 zeroext -6066911648021540300)
  call void @pll(i64 zeroext -92577714601985)
  call void @pll(i64 zeroext -6066911652010983425)
  call void @pll(i64 zeroext -6067173104155623425)
  call void @pll(i64 zeroext -18686810953847)
  call void @pll(i64 zeroext -6066930334832394241)
  call void @pll(i64 zeroext -6066930334832433271)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @opi() #0 {
  %1 = alloca i32, align 4
  store i32 1000, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call signext i32 @addip0(i32 signext %2)
  %4 = zext i32 %3 to i64
  call void @pll(i64 zeroext %4)
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = call i64 @sublp0(i64 zeroext %6)
  call void @pll(i64 zeroext %7)
  %8 = load i32, i32* %1, align 4
  %9 = call signext i32 @addip123(i32 signext %8)
  %10 = zext i32 %9 to i64
  call void @pll(i64 zeroext %10)
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = call i64 @addlm123(i64 zeroext %12)
  call void @pll(i64 zeroext %13)
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = call i64 @sublp4095(i64 zeroext %15)
  call void @pll(i64 zeroext %16)
  %17 = load i32, i32* %1, align 4
  %18 = call signext i32 @subim503808(i32 signext %17)
  %19 = zext i32 %18 to i64
  call void @pll(i64 zeroext %19)
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = call i64 @addp12345(i64 zeroext %21)
  call void @pll(i64 zeroext %22)
  %23 = load i32, i32* %1, align 4
  %24 = call signext i32 @subp12345(i32 signext %23)
  %25 = zext i32 %24 to i64
  call void @pll(i64 zeroext %25)
  %26 = load i32, i32* %1, align 4
  %27 = call signext i32 @mvni(i32 signext %26)
  %28 = zext i32 %27 to i64
  call void @pll(i64 zeroext %28)
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = call i64 @negl(i64 zeroext %30)
  call void @pll(i64 zeroext %31)
  %32 = load i32, i32* %1, align 4
  %33 = call signext i32 @rsbi123(i32 signext %32)
  %34 = zext i32 %33 to i64
  call void @pll(i64 zeroext %34)
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = call i64 @rsbl123(i64 zeroext %36)
  call void @pll(i64 zeroext %37)
  %38 = load i32, i32* %1, align 4
  %39 = call signext i32 @andi0(i32 signext %38)
  %40 = zext i32 %39 to i64
  call void @pll(i64 zeroext %40)
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = call i64 @andlm1(i64 zeroext %42)
  call void @pll(i64 zeroext %43)
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = call i64 @orrl0(i64 zeroext %45)
  call void @pll(i64 zeroext %46)
  %47 = load i32, i32* %1, align 4
  %48 = call signext i32 @orrim1(i32 signext %47)
  %49 = zext i32 %48 to i64
  call void @pll(i64 zeroext %49)
  %50 = load i32, i32* %1, align 4
  %51 = call signext i32 @eori0(i32 signext %50)
  %52 = zext i32 %51 to i64
  call void @pll(i64 zeroext %52)
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = call i64 @eorlm1(i64 zeroext %54)
  call void @pll(i64 zeroext %55)
  %56 = load i32, i32* %1, align 4
  %57 = call signext i32 @and0xf0(i32 signext %56)
  %58 = zext i32 %57 to i64
  call void @pll(i64 zeroext %58)
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 @orr0xf0(i64 zeroext %60)
  call void @pll(i64 zeroext %61)
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = call i64 @eor0xf0(i64 zeroext %63)
  call void @pll(i64 zeroext %64)
  %65 = load i32, i32* %1, align 4
  %66 = call signext i32 @lsli0(i32 signext %65)
  %67 = zext i32 %66 to i64
  call void @pll(i64 zeroext %67)
  %68 = load i32, i32* %1, align 4
  %69 = call signext i32 @lsri0(i32 signext %68)
  %70 = zext i32 %69 to i64
  call void @pll(i64 zeroext %70)
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = call i64 @asrl0(i64 signext %72)
  call void @pll(i64 zeroext %73)
  %74 = load i32, i32* %1, align 4
  %75 = call signext i32 @lsli1(i32 signext %74)
  %76 = zext i32 %75 to i64
  call void @pll(i64 zeroext %76)
  %77 = load i32, i32* %1, align 4
  %78 = call signext i32 @lsli31(i32 signext %77)
  %79 = zext i32 %78 to i64
  call void @pll(i64 zeroext %79)
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = call i64 @lsll1(i64 zeroext %81)
  call void @pll(i64 zeroext %82)
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = call i64 @lsll63(i64 zeroext %84)
  call void @pll(i64 zeroext %85)
  %86 = load i32, i32* %1, align 4
  %87 = call signext i32 @lsri1(i32 signext %86)
  %88 = zext i32 %87 to i64
  call void @pll(i64 zeroext %88)
  %89 = load i32, i32* %1, align 4
  %90 = call signext i32 @lsri31(i32 signext %89)
  %91 = zext i32 %90 to i64
  call void @pll(i64 zeroext %91)
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = call i64 @lsrl1(i64 zeroext %93)
  call void @pll(i64 zeroext %94)
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = call i64 @lsrl63(i64 zeroext %96)
  call void @pll(i64 zeroext %97)
  %98 = load i32, i32* %1, align 4
  %99 = call signext i32 @asri1(i32 signext %98)
  %100 = sext i32 %99 to i64
  call void @pll(i64 zeroext %100)
  %101 = load i32, i32* %1, align 4
  %102 = call signext i32 @asri31(i32 signext %101)
  %103 = sext i32 %102 to i64
  call void @pll(i64 zeroext %103)
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = call i64 @asrl1(i64 signext %105)
  call void @pll(i64 zeroext %106)
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = call i64 @asrl63(i64 signext %108)
  call void @pll(i64 zeroext %109)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @addip0(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add i32 %3, 0
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @sublp0(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sub i64 %3, 0
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @addip123(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add i32 %3, 123
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @addlm123(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, -123
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @sublp4095(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sub i64 %3, 4095
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @subim503808(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 %3, -503808
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @addp12345(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, 12345
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @subp12345(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 %3, 12345
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @mvni(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 -1, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @negl(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sub i64 0, %3
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @rsbi123(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 123, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @rsbl123(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sub i64 123, %3
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @andi0(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 0
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @andlm1(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone
define internal i64 @orrl0(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @orrim1(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = or i32 %3, -1
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @eori0(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, 0
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @eorlm1(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = xor i64 %3, -1
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @and0xf0(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 240
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @orr0xf0(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = or i64 %3, 240
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @eor0xf0(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = xor i64 %3, 240
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @lsli0(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 0
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @lsri0(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 0
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @asrl0(i64 signext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = ashr i64 %3, 0
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @lsli1(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @lsli31(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 31
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @lsll1(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = shl i64 %3, 1
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @lsll63(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = shl i64 %3, 63
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @lsri1(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @lsri31(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 31
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @lsrl1(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = lshr i64 %3, 1
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @lsrl63(i64 zeroext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = lshr i64 %3, 63
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @asri1(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal signext i32 @asri31(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 31
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @asrl1(i64 signext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = ashr i64 %3, 1
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define internal i64 @asrl63(i64 signext %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = ashr i64 %3, 63
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone
define dso_local void @pcs() #0 {
  call void @arg()
  call void @ret()
  call void @stdarg()
  call void @movi()
  call void @opi()
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @pcs()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }
attributes #3 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 13.0.0 (/home/jnu_llvm/llvm13.0.0-sw1.0.3/clang d71fe53af59eb7ed76b7eb9cca109d7c41faaf1e)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
