; ModuleID = '../files/test/00218.c'
source_filename = "../files/test/00218.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_common }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i16 }

@.str = private unnamed_addr constant [33 x i8] c"unsigned enum bit-fields broken\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blah() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_like_real(%union.tree_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i32 0, i32 2
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 255
  %9 = zext i16 %8 to i32
  switch i32 %9, label %12 [
    i32 152, label %10
  ]

10:                                               ; preds = %1
  %11 = call i32 @blah()
  store i32 %11, i32* %2, align 4
  br label %15

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.tree_node, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %3, i32 0, i32 2
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, -256
  %7 = or i16 %6, 152
  store i16 %7, i16* %4, align 8
  %8 = call i32 @convert_like_real(%union.tree_node* %2)
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
