; ModuleID = '../files/test/select.c'
source_filename = "../files/test/select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [20 x float] [float 5.000000e+00, float 4.000000e+00, float 0x40249999A0000000, float 0x3FF19999A0000000, float 0x4016CCCCC0000000, float 1.000000e+02, float 2.310000e+02, float 1.110000e+02, float 4.950000e+01, float 9.900000e+01, float 1.000000e+01, float 1.500000e+02, float 0x406BC70A40000000, float 1.010000e+02, float 7.700000e+01, float 4.400000e+01, float 3.500000e+01, float 0x40348A3D80000000, float 0x4058FF5C20000000, float 0x408BC70A40000000], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @select(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %216, %2
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %217

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 1
  %23 = icmp ule i64 %20, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fcmp olt float %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %38
  %40 = load float, float* %39, align 4
  store float %40, float* %11, align 4
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %44
  store float %43, float* %45, align 4
  %46 = load float, float* %11, align 4
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %47
  store float %46, float* %48, align 4
  br label %49

49:                                               ; preds = %37, %29
  br label %50

50:                                               ; preds = %49, %24
  store i32 1, i32* %12, align 4
  br label %216

51:                                               ; preds = %19
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %215, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %55, %56
  %58 = lshr i64 %57, 1
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %59
  %61 = load float, float* %60, align 4
  store float %61, float* %11, align 4
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %66
  store float %65, float* %67, align 4
  %68 = load float, float* %11, align 4
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  %71 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %70
  store float %68, float* %71, align 4
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %73
  %75 = load float, float* %74, align 4
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fcmp ogt float %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %54
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  %83 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %82
  %84 = load float, float* %83, align 4
  store float %84, float* %11, align 4
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %89
  store float %87, float* %90, align 4
  %91 = load float, float* %11, align 4
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %92
  store float %91, float* %93, align 4
  br label %94

94:                                               ; preds = %80, %54
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fcmp ogt float %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %94
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %103
  %105 = load float, float* %104, align 4
  store float %105, float* %11, align 4
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %109
  store float %108, float* %110, align 4
  %111 = load float, float* %11, align 4
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %112
  store float %111, float* %113, align 4
  br label %114

114:                                              ; preds = %102, %94
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 1
  %117 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %116
  %118 = load float, float* %117, align 4
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fcmp ogt float %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %114
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, 1
  %126 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %125
  %127 = load float, float* %126, align 4
  store float %127, float* %11, align 4
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %128
  %130 = load float, float* %129, align 4
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %132
  store float %130, float* %133, align 4
  %134 = load float, float* %11, align 4
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %135
  store float %134, float* %136, align 4
  br label %137

137:                                              ; preds = %123, %114
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %5, align 8
  %140 = load i64, i64* %6, align 8
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %141
  %143 = load float, float* %142, align 4
  store float %143, float* %10, align 4
  br label %144

144:                                              ; preds = %184, %137
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br i1 %147, label %148, label %193

148:                                              ; preds = %144
  %149 = load i64, i64* %5, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %157, %148
  %152 = load i64, i64* %5, align 8
  %153 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %152
  %154 = load float, float* %153, align 4
  %155 = load float, float* %10, align 4
  %156 = fcmp olt float %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i64, i64* %5, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %5, align 8
  br label %151, !llvm.loop !4

160:                                              ; preds = %151
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, -1
  store i64 %162, i64* %7, align 8
  br label %163

163:                                              ; preds = %169, %160
  %164 = load i64, i64* %7, align 8
  %165 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %164
  %166 = load float, float* %165, align 4
  %167 = load float, float* %10, align 4
  %168 = fcmp ogt float %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i64, i64* %7, align 8
  %171 = add i64 %170, -1
  store i64 %171, i64* %7, align 8
  br label %163, !llvm.loop !6

172:                                              ; preds = %163
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* %5, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 1, i32* %13, align 4
  br label %177

177:                                              ; preds = %176, %172
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %181
  %183 = load float, float* %182, align 4
  store float %183, float* %11, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load i64, i64* %5, align 8
  %189 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %188
  store float %187, float* %189, align 4
  %190 = load float, float* %11, align 4
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %191
  store float %190, float* %192, align 4
  br label %144, !llvm.loop !7

193:                                              ; preds = %144
  %194 = load i64, i64* %7, align 8
  %195 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %194
  %196 = load float, float* %195, align 4
  %197 = load i64, i64* %8, align 8
  %198 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %197
  store float %196, float* %198, align 4
  %199 = load float, float* %10, align 4
  %200 = load i64, i64* %7, align 8
  %201 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %200
  store float %199, float* %201, align 4
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* %3, align 8
  %204 = icmp uge i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %193
  %206 = load i64, i64* %7, align 8
  %207 = sub i64 %206, 1
  store i64 %207, i64* %6, align 8
  br label %208

208:                                              ; preds = %205, %193
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* %3, align 8
  %211 = icmp ule i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i64, i64* %5, align 8
  store i64 %213, i64* %8, align 8
  br label %214

214:                                              ; preds = %212, %208
  br label %215

215:                                              ; preds = %214, %51
  br label %216

216:                                              ; preds = %215, %50
  br label %15, !llvm.loop !8

217:                                              ; preds = %15
  %218 = load i64, i64* %3, align 8
  %219 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %218
  %220 = load float, float* %219, align 4
  ret float %220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = call float @select(i64 10, i64 20)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
