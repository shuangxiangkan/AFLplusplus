; ModuleID = './myTestCases/main.c'
source_filename = "./myTestCases/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$__memrchr = comdat nodeduplicate

$main = comdat nodeduplicate

$sancov.module_ctor_trace_pc_guard = comdat any

@main._B = internal global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"##SIG_AFL_PERSISTENT##\00", align 1
@__afl_connected = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error reading from stdin\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"m: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"c: %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"n: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ret: %s\0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c"input: \0A--------\00", align 1
@str.11 = private unnamed_addr constant [10 x i8] c"\0A--------\00", align 1
@__afl_area_ptr = external global i8*
@__afl_api_spec = external global i32*
@__sancov_gen_ = private global [5 x i32] zeroinitializer, section "__sancov_guards", comdat($__memrchr), align 4
@__sancov_gen_.12 = private global [9 x i32] zeroinitializer, section "__sancov_guards", comdat($main), align 4
@__start___sancov_guards = extern_weak hidden global i32*
@__stop___sancov_guards = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*) }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @main._B to i8*), i8* bitcast ([5 x i32]* @__sancov_gen_ to i8*), i8* bitcast ([9 x i32]* @__sancov_gen_.12 to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i8* @__memrchr(i8* noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !nosanitize !4
  %5 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %6 = getelementptr i8, i8* %5, i32 %4
  %7 = load i8, i8* %6, align 1, !nosanitize !4
  %8 = add i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  %11 = add i8 %8, %10
  store i8 %11, i8* %6, align 1, !nosanitize !4
  %12 = and i32 %1, 255
  br label %13

13:                                               ; preds = %37, %3
  %14 = phi i64 [ %2, %3 ], [ %18, %37 ]
  %15 = load i32*, i32** @__afl_api_spec, align 8, !nosanitize !4
  %16 = load i32, i32* %15, align 4, !nosanitize !4
  %17 = add i32 %16, 1
  store i32 %17, i32* %15, align 4, !nosanitize !4
  %18 = add i64 %14, -1
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_ to i64), i64 4) to i32*), align 4, !nosanitize !4
  %22 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %23 = getelementptr i8, i8* %22, i32 %21
  %24 = load i8, i8* %23, align 1, !nosanitize !4
  %25 = add i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = zext i1 %26 to i8
  %28 = add i8 %25, %27
  store i8 %28, i8* %23, align 1, !nosanitize !4
  br label %59

29:                                               ; preds = %13
  %30 = load i32*, i32** @__afl_api_spec, align 8, !nosanitize !4
  %31 = load i32, i32* %30, align 4, !nosanitize !4
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4, !nosanitize !4
  %33 = getelementptr inbounds i8, i8* %0, i64 %18
  %34 = load i8, i8* %33, align 1, !tbaa !5
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %12, %35
  br i1 %36, label %46, label %37, !llvm.loop !8

37:                                               ; preds = %29
  %38 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_ to i64), i64 8) to i32*), align 4, !nosanitize !4
  %39 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %40 = getelementptr i8, i8* %39, i32 %38
  %41 = load i8, i8* %40, align 1, !nosanitize !4
  %42 = add i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = zext i1 %43 to i8
  %45 = add i8 %42, %44
  store i8 %45, i8* %40, align 1, !nosanitize !4
  br label %13

46:                                               ; preds = %29
  %47 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_ to i64), i64 12) to i32*), align 4, !nosanitize !4
  %48 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %49 = getelementptr i8, i8* %48, i32 %47
  %50 = load i8, i8* %49, align 1, !nosanitize !4
  %51 = add i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = zext i1 %52 to i8
  %54 = add i8 %51, %53
  store i8 %54, i8* %49, align 1, !nosanitize !4
  %55 = load i32*, i32** @__afl_api_spec, align 8, !nosanitize !4
  %56 = load i32, i32* %55, align 4, !nosanitize !4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4, !nosanitize !4
  %58 = getelementptr inbounds i8, i8* %0, i64 %18
  br label %59

59:                                               ; preds = %20, %46
  %60 = phi i8* [ %58, %46 ], [ null, %20 ]
  %61 = load i32*, i32** @__afl_api_spec, align 8, !nosanitize !4
  %62 = load i32, i32* %61, align 4, !nosanitize !4
  %63 = add i32 %62, 1
  store i32 %63, i32* %61, align 4, !nosanitize !4
  ret i8* %60
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #2 comdat {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @__sancov_gen_.12, i32 0, i32 0), align 4, !nosanitize !4
  %4 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %5 = getelementptr i8, i8* %4, i32 %3
  %6 = load i8, i8* %5, align 1, !nosanitize !4
  %7 = add i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  %10 = add i8 %7, %9
  store i8 %10, i8* %5, align 1, !nosanitize !4
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %11) #10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @main._B, align 8, !tbaa !10
  %12 = load i32, i32* @__afl_connected, align 4, !tbaa !12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 1000
  %15 = select i1 %13, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 20) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 24) to i32*)
  %16 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %17 = load i32, i32* %15, align 4, !nosanitize !4
  %18 = getelementptr i8, i8* %16, i32 %17
  %19 = load i8, i8* %18, align 1, !nosanitize !4
  %20 = add i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i8
  %23 = add i8 %20, %22
  store i8 %23, i8* %18, align 1, !nosanitize !4
  %24 = call i32 @__afl_persistent_loop(i32 noundef %14) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %0
  %27 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 4) to i32*), align 4, !nosanitize !4
  %28 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %29 = getelementptr i8, i8* %28, i32 %27
  %30 = load i8, i8* %29, align 1, !nosanitize !4
  %31 = add i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = zext i1 %32 to i8
  %34 = add i8 %31, %33
  store i8 %34, i8* %29, align 1, !nosanitize !4
  br label %99

35:                                               ; preds = %0
  %36 = bitcast i32* %2 to i8*
  br label %37

37:                                               ; preds = %81, %35
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(100) %11, i8 0, i64 100, i1 false)
  %38 = call i64 @read(i32 noundef 0, i8* noundef nonnull %11, i64 noundef 100) #10
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 8) to i32*), align 4, !nosanitize !4
  %42 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %43 = getelementptr i8, i8* %42, i32 %41
  %44 = load i8, i8* %43, align 1, !nosanitize !4
  %45 = add i8 %44, 1
  %46 = icmp eq i8 %45, 0
  %47 = zext i1 %46 to i8
  %48 = add i8 %45, %47
  store i8 %48, i8* %43, align 1, !nosanitize !4
  call void @perror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #11
  br label %99

49:                                               ; preds = %37
  %50 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %11)
  %52 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.11, i64 0, i64 0))
  %53 = call i8* @strtok(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10
  %55 = load i8, i8* %54, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #10
  %56 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #10
  %57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %56, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %2) #10
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* noundef %53)
  %59 = sext i8 %55 to i32
  %60 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef %59)
  %61 = load i32, i32* %2, align 4, !tbaa !12
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 noundef %61)
  %63 = load i32, i32* %2, align 4, !tbaa !12
  %64 = sext i32 %63 to i64
  %65 = call i8* @__memrchr(i8* noundef %53, i32 noundef %59, i64 noundef %64)
  %66 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef %65)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @main._B, align 8, !tbaa !10
  %67 = load i32, i32* @__afl_connected, align 4, !tbaa !12
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 1, i32 1000
  %70 = select i1 %68, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 28) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 32) to i32*)
  %71 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %72 = load i32, i32* %70, align 4, !nosanitize !4
  %73 = getelementptr i8, i8* %71, i32 %72
  %74 = load i8, i8* %73, align 1, !nosanitize !4
  %75 = add i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = zext i1 %76 to i8
  %78 = add i8 %75, %77
  store i8 %78, i8* %73, align 1, !nosanitize !4
  %79 = call i32 @__afl_persistent_loop(i32 noundef %69) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %49
  %82 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 12) to i32*), align 4, !nosanitize !4
  %83 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %84 = getelementptr i8, i8* %83, i32 %82
  %85 = load i8, i8* %84, align 1, !nosanitize !4
  %86 = add i8 %85, 1
  %87 = icmp eq i8 %86, 0
  %88 = zext i1 %87 to i8
  %89 = add i8 %86, %88
  store i8 %89, i8* %84, align 1, !nosanitize !4
  br label %37

90:                                               ; preds = %49
  %91 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.12 to i64), i64 16) to i32*), align 4, !nosanitize !4
  %92 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %93 = getelementptr i8, i8* %92, i32 %91
  %94 = load i8, i8* %93, align 1, !nosanitize !4
  %95 = add i8 %94, 1
  %96 = icmp eq i8 %95, 0
  %97 = zext i1 %96 to i8
  %98 = add i8 %95, %97
  store i8 %98, i8* %93, align 1, !nosanitize !4
  br label %99

99:                                               ; preds = %90, %26, %40
  %100 = phi i32 [ 1, %40 ], [ 0, %26 ], [ 0, %90 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %11) #10
  ret i32 %100
}

declare i32 @__afl_persistent_loop(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i8* @strtok(i8* noundef, i8* nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #9 comdat {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @__start___sancov_guards, i32** @__stop___sancov_guards)
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind uwtable }
attributes #10 = { nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
