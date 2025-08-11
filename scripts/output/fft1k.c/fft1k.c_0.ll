; ModuleID = '/home/jnu_llvm/MLllvm/simple/fft1k.c'
source_filename = "/home/jnu_llvm/MLllvm/simple/fft1k.c"
target datalayout = "e-m:e-p:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n64-S128-v256:256"
target triple = "sw_64-sunway-linux-gnu"

%struct.COMPLEX = type { float, float }

@n = dso_local global i32 1024, align 4
@x = dso_local global [1024 x %struct.COMPLEX] zeroinitializer, align 4
@w = dso_local global [1024 x %struct.COMPLEX] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local float @fabs(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fcmp oge float %4, 0.000000e+00
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  store float %7, float* %3, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load float, float* %2, align 4
  %10 = fneg float %9
  store float %10, float* %3, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = load float, float* %3, align 4
  ret float %12
}

; Function Attrs: noinline nounwind
define dso_local float @sin(double %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = fptrunc double %0 to float
  store float %6, float* %2, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load float, float* %2, align 4
  %9 = fpext float %8 to double
  %10 = fcmp ogt double %9, 0x401921FB54442D18
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load float, float* %2, align 4
  %13 = fpext float %12 to double
  %14 = fsub double %13, 0x401921FB54442D18
  %15 = fptrunc double %14 to float
  store float %15, float* %2, align 4
  br label %7, !llvm.loop !3

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %21, %16
  %18 = load float, float* %2, align 4
  %19 = fpext float %18 to double
  %20 = fcmp olt double %19, 0xC01921FB54442D18
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load float, float* %2, align 4
  %23 = fpext float %22 to double
  %24 = fadd double %23, 0x401921FB54442D18
  %25 = fptrunc double %24 to float
  store float %25, float* %2, align 4
  br label %17, !llvm.loop !5

26:                                               ; preds = %17
  %27 = load float, float* %2, align 4
  store float %27, float* %4, align 4
  store float %27, float* %3, align 4
  %28 = load float, float* %4, align 4
  %29 = load float, float* %2, align 4
  %30 = load float, float* %2, align 4
  %31 = fmul float %29, %30
  %32 = fneg float %31
  %33 = fmul float %28, %32
  %34 = fpext float %33 to double
  %35 = load i32, i32* %5, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double 2.000000e+00, %36
  %38 = load i32, i32* %5, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double 2.000000e+00, %39
  %41 = fadd double %40, 1.000000e+00
  %42 = fmul double %37, %41
  %43 = fdiv double %34, %42
  %44 = fptrunc double %43 to float
  store float %44, float* %4, align 4
  %45 = load float, float* %3, align 4
  %46 = load float, float* %4, align 4
  %47 = fadd float %45, %46
  store float %47, float* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %55, %26
  %51 = load float, float* %4, align 4
  %52 = call float @fabs(float %51)
  %53 = fpext float %52 to double
  %54 = fcmp oge double %53, 1.000000e-05
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load float, float* %4, align 4
  %57 = load float, float* %2, align 4
  %58 = load float, float* %2, align 4
  %59 = fmul float %57, %58
  %60 = fneg float %59
  %61 = fmul float %56, %60
  %62 = fpext float %61 to double
  %63 = load i32, i32* %5, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double 2.000000e+00, %64
  %66 = load i32, i32* %5, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double 2.000000e+00, %67
  %69 = fadd double %68, 1.000000e+00
  %70 = fmul double %65, %69
  %71 = fdiv double %62, %70
  %72 = fptrunc double %71 to float
  store float %72, float* %4, align 4
  %73 = load float, float* %3, align 4
  %74 = load float, float* %4, align 4
  %75 = fadd float %73, %74
  store float %75, float* %3, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %50, !llvm.loop !6

78:                                               ; preds = %50
  %79 = load float, float* %3, align 4
  ret float %79
}

; Function Attrs: noinline nounwind
define dso_local float @cos(double %0) #0 {
  %2 = alloca float, align 4
  %3 = fptrunc double %0 to float
  store float %3, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fpext float %4 to double
  %6 = fsub double 0x3FF921FB54442D18, %5
  %7 = call float @sin(double %6)
  ret float %7
}

; Function Attrs: noinline nounwind
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @n, align 4
  call void @init_w(i32 signext %2)
  store float 1.000000e+00, float* getelementptr inbounds ([1024 x %struct.COMPLEX], [1024 x %struct.COMPLEX]* @x, i64 0, i64 0, i32 0), align 4
  %3 = load i32, i32* @n, align 4
  call void @fft_c(i32 signext %3)
  ret i32 0
}

; Function Attrs: noinline nounwind
define dso_local void @init_w(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to double
  %7 = fdiv double 0x401921FB54442D18, %6
  %8 = fptrunc double %7 to float
  store float %8, float* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = sitofp i32 %14 to float
  %16 = load float, float* %4, align 4
  %17 = fmul float %15, %16
  %18 = fpext float %17 to double
  %19 = call float @cos(double %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x %struct.COMPLEX], [1024 x %struct.COMPLEX]* @w, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %22, i32 0, i32 0
  store float %19, float* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sitofp i32 %24 to float
  %26 = load float, float* %4, align 4
  %27 = fmul float %25, %26
  %28 = fpext float %27 to double
  %29 = call float @sin(double %28)
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1024 x %struct.COMPLEX], [1024 x %struct.COMPLEX]* @w, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %32, i32 0, i32 1
  store float %29, float* %33, align 4
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9, !llvm.loop !7

37:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @fft_c(i32 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.COMPLEX, align 4
  %4 = alloca %struct.COMPLEX, align 4
  %5 = alloca %struct.COMPLEX, align 4
  %6 = alloca %struct.COMPLEX*, align 8
  %7 = alloca %struct.COMPLEX*, align 8
  %8 = alloca %struct.COMPLEX*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %117, %1
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %120

18:                                               ; preds = %15
  store %struct.COMPLEX* getelementptr inbounds ([1024 x %struct.COMPLEX], [1024 x %struct.COMPLEX]* @w, i64 0, i64 0), %struct.COMPLEX** %8, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %111, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %19
  %24 = load %struct.COMPLEX*, %struct.COMPLEX** %8, align 8
  %25 = bitcast %struct.COMPLEX* %3 to i8*
  %26 = bitcast %struct.COMPLEX* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %101, %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %106

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* getelementptr inbounds ([1024 x %struct.COMPLEX], [1024 x %struct.COMPLEX]* @x, i64 0, i64 0), i64 %34
  store %struct.COMPLEX* %35, %struct.COMPLEX** %6, align 8
  %36 = load %struct.COMPLEX*, %struct.COMPLEX** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %36, i64 %38
  store %struct.COMPLEX* %39, %struct.COMPLEX** %7, align 8
  %40 = load %struct.COMPLEX*, %struct.COMPLEX** %6, align 8
  %41 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = load %struct.COMPLEX*, %struct.COMPLEX** %7, align 8
  %44 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fadd float %42, %45
  %47 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %4, i32 0, i32 0
  store float %46, float* %47, align 4
  %48 = load %struct.COMPLEX*, %struct.COMPLEX** %6, align 8
  %49 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.COMPLEX*, %struct.COMPLEX** %7, align 8
  %52 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = fadd float %50, %53
  %55 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %4, i32 0, i32 1
  store float %54, float* %55, align 4
  %56 = load %struct.COMPLEX*, %struct.COMPLEX** %6, align 8
  %57 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = load %struct.COMPLEX*, %struct.COMPLEX** %7, align 8
  %60 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  %62 = fsub float %58, %61
  %63 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %5, i32 0, i32 0
  store float %62, float* %63, align 4
  %64 = load %struct.COMPLEX*, %struct.COMPLEX** %6, align 8
  %65 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = load %struct.COMPLEX*, %struct.COMPLEX** %7, align 8
  %68 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = fsub float %66, %69
  %71 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %5, i32 0, i32 1
  store float %70, float* %71, align 4
  %72 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %5, i32 0, i32 0
  %73 = load float, float* %72, align 4
  %74 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %3, i32 0, i32 0
  %75 = load float, float* %74, align 4
  %76 = fmul float %73, %75
  %77 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %5, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %3, i32 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = fmul float %78, %80
  %82 = fsub float %76, %81
  %83 = load %struct.COMPLEX*, %struct.COMPLEX** %7, align 8
  %84 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %83, i32 0, i32 0
  store float %82, float* %84, align 4
  %85 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %5, i32 0, i32 0
  %86 = load float, float* %85, align 4
  %87 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %3, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = fmul float %86, %88
  %90 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %5, i32 0, i32 1
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %3, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = fmul float %91, %93
  %95 = fadd float %89, %94
  %96 = load %struct.COMPLEX*, %struct.COMPLEX** %7, align 8
  %97 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %96, i32 0, i32 1
  store float %95, float* %97, align 4
  %98 = load %struct.COMPLEX*, %struct.COMPLEX** %6, align 8
  %99 = bitcast %struct.COMPLEX* %98 to i8*
  %100 = bitcast %struct.COMPLEX* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 8, i1 false)
  br label %101

101:                                              ; preds = %32
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %102, %104
  store i32 %105, i32* %9, align 4
  br label %28, !llvm.loop !8

106:                                              ; preds = %28
  %107 = load %struct.COMPLEX*, %struct.COMPLEX** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.COMPLEX, %struct.COMPLEX* %107, i64 %109
  store %struct.COMPLEX* %110, %struct.COMPLEX** %8, align 8
  br label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %19, !llvm.loop !9

114:                                              ; preds = %19
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 2, %115
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %11, align 4
  br label %15, !llvm.loop !10

120:                                              ; preds = %15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sw6b" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"clang version 13.0.0 (/home/jnu_llvm/llvm13.0.0-sw1.0.3/clang d71fe53af59eb7ed76b7eb9cca109d7c41faaf1e)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
