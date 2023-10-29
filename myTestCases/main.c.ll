; ModuleID = './myTestCases/main.c'
source_filename = "./myTestCases/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

$__memrchr = comdat nodeduplicate

$main = comdat nodeduplicate

$sancov.module_ctor_trace_pc_guard = comdat any

@main._B = internal global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"##SIG_AFL_PERSISTENT##\00", align 1
@__afl_connected = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ret: %s\0A\00", align 1
@__afl_area_ptr = external global i8*
@__afl_api_spec = external global i32*
@__sancov_gen_ = private global [2 x i32] zeroinitializer, section "__sancov_guards", comdat($__memrchr), align 4
@__sancov_gen_.2 = private global [9 x i32] zeroinitializer, section "__sancov_guards", comdat($main), align 4
@__start___sancov_guards = extern_weak hidden global i32*
@__stop___sancov_guards = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*) }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @main._B to i8*), i8* bitcast ([2 x i32]* @__sancov_gen_ to i8*), i8* bitcast ([9 x i32]* @__sancov_gen_.2 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull i8* @__memrchr(i8* noundef readnone %0, i32 %1, i64 %2) local_unnamed_addr #0 comdat {
  %4 = load i32*, i32** @__afl_api_spec, align 8, !nosanitize !4
  %5 = load i32, i32* %4, align 4, !nosanitize !4
  %6 = add i32 %5, 1
  store i32 %6, i32* %4, align 4, !nosanitize !4
  %7 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !nosanitize !4
  %8 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %9 = getelementptr i8, i8* %8, i32 %7
  %10 = load i8, i8* %9, align 1, !nosanitize !4
  %11 = add i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = zext i1 %12 to i8
  %14 = add i8 %11, %13
  store i8 %14, i8* %9, align 1, !nosanitize !4
  %15 = getelementptr inbounds i8, i8* %0, i64 1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #1 comdat {
  %1 = alloca [1024 x i8], align 16
  %2 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @__sancov_gen_.2, i32 0, i32 0), align 4, !nosanitize !4
  %3 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %4 = getelementptr i8, i8* %3, i32 %2
  %5 = load i8, i8* %4, align 1, !nosanitize !4
  %6 = add i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i8
  %9 = add i8 %6, %8
  store i8 %9, i8* %4, align 1, !nosanitize !4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @main._B, align 8, !tbaa !5
  %10 = load i32, i32* @__afl_connected, align 4, !tbaa !9
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 1000
  %13 = select i1 %11, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 20) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 24) to i32*)
  %14 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %15 = load i32, i32* %13, align 4, !nosanitize !4
  %16 = getelementptr i8, i8* %14, i32 %15
  %17 = load i8, i8* %16, align 1, !nosanitize !4
  %18 = add i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = zext i1 %19 to i8
  %21 = add i8 %18, %20
  store i8 %21, i8* %16, align 1, !nosanitize !4
  %22 = call i32 @__afl_persistent_loop(i32 noundef %12) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %0
  %25 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 4) to i32*), align 4, !nosanitize !4
  %26 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %27 = getelementptr i8, i8* %26, i32 %25
  %28 = load i8, i8* %27, align 1, !nosanitize !4
  %29 = add i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = zext i1 %30 to i8
  %32 = add i8 %29, %31
  store i8 %32, i8* %27, align 1, !nosanitize !4
  br label %83

33:                                               ; preds = %0
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  br label %35

35:                                               ; preds = %65, %33
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %34) #6
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %37 = call i8* @fgets(i8* noundef nonnull %34, i32 noundef 1024, %struct._IO_FILE* noundef %36)
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 8) to i32*), align 4, !nosanitize !4
  %41 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %42 = getelementptr i8, i8* %41, i32 %40
  %43 = load i8, i8* %42, align 1, !nosanitize !4
  %44 = add i8 %43, 1
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i8
  %47 = add i8 %44, %46
  store i8 %47, i8* %42, align 1, !nosanitize !4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %34) #6
  br label %83

48:                                               ; preds = %35
  %49 = call i8* @__memrchr(i8* noundef nonnull %34, i32 undef, i64 undef)
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %49)
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %34) #6
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @main._B, align 8, !tbaa !5
  %51 = load i32, i32* @__afl_connected, align 4, !tbaa !9
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 1, i32 1000
  %54 = select i1 %52, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 28) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 32) to i32*)
  %55 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %56 = load i32, i32* %54, align 4, !nosanitize !4
  %57 = getelementptr i8, i8* %55, i32 %56
  %58 = load i8, i8* %57, align 1, !nosanitize !4
  %59 = add i8 %58, 1
  %60 = icmp eq i8 %59, 0
  %61 = zext i1 %60 to i8
  %62 = add i8 %59, %61
  store i8 %62, i8* %57, align 1, !nosanitize !4
  %63 = call i32 @__afl_persistent_loop(i32 noundef %53) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %48
  %66 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 12) to i32*), align 4, !nosanitize !4
  %67 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %68 = getelementptr i8, i8* %67, i32 %66
  %69 = load i8, i8* %68, align 1, !nosanitize !4
  %70 = add i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = zext i1 %71 to i8
  %73 = add i8 %70, %72
  store i8 %73, i8* %68, align 1, !nosanitize !4
  br label %35

74:                                               ; preds = %48
  %75 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([9 x i32]* @__sancov_gen_.2 to i64), i64 16) to i32*), align 4, !nosanitize !4
  %76 = load i8*, i8** @__afl_area_ptr, align 8, !nosanitize !4
  %77 = getelementptr i8, i8* %76, i32 %75
  %78 = load i8, i8* %77, align 1, !nosanitize !4
  %79 = add i8 %78, 1
  %80 = icmp eq i8 %79, 0
  %81 = zext i1 %80 to i8
  %82 = add i8 %79, %81
  store i8 %82, i8* %77, align 1, !nosanitize !4
  br label %83

83:                                               ; preds = %74, %24, %39
  %84 = phi i32 [ 1, %39 ], [ 0, %24 ], [ 0, %74 ]
  ret i32 %84
}

declare i32 @__afl_persistent_loop(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #5 comdat {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @__start___sancov_guards, i32** @__stop___sancov_guards)
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
