; ModuleID = '/data/chengh/MLfortest/simple/project1/pri.c'
source_filename = "/data/chengh/MLfortest/simple/project1/pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sieve_of_eratosthenes(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32**, i32*** %5, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %3, align 4
  br label %123

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = call noalias align 16 i8* @calloc(i64 %21, i64 1) #2
  store i8* %22, i8** %6, align 8
  store i32 2, i32* %7, align 4
  br label %23

23:                                               ; preds = %32, %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 1, i8* %31, align 1
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %23, !llvm.loop !4

35:                                               ; preds = %23
  store i32 2, i32* %8, align 4
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %62, %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %53, !llvm.loop !6

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %36, !llvm.loop !7

71:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %76
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %72, !llvm.loop !8

90:                                               ; preds = %72
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = call noalias align 16 i8* @malloc(i64 %93) #2
  %95 = bitcast i8* %94 to i32*
  %96 = load i32**, i32*** %5, align 8
  store i32* %95, i32** %96, align 8
  store i32 0, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %97

97:                                               ; preds = %117, %90
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  %110 = load i32**, i32*** %5, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %97, !llvm.loop !9

120:                                              ; preds = %97
  %121 = load i8*, i8** %6, align 8
  call void @free(i8* %121) #2
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %16
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!9 = distinct !{!9, !5}
