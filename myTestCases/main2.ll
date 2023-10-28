; ModuleID = './myTestCases/main.c'
source_filename = "./myTestCases/main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: Failed to open file %s\0A\00", align 1
@main._B = internal global i8* null, align 8, !dbg !0
@.str.5 = private unnamed_addr constant [23 x i8] c"##SIG_AFL_PERSISTENT##\00", align 1
@__afl_connected = external local_unnamed_addr global i32, align 4
@__stdinp = external local_unnamed_addr global %struct.__sFILE*, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"__memrchr.cpp\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"void *__memrchr(const void *m, int c, size_t n)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ret == valuestring\00", align 1
@__afl_area_ptr = external global i8*
@__afl_api_spec = external global i32*
@__sancov_gen_ = private global [4 x i32] zeroinitializer, section "__DATA,__sancov_guards", align 4
@__sancov_gen_.9 = private global [4 x i32] zeroinitializer, section "__DATA,__sancov_guards", align 4
@__sancov_gen_.10 = private global [15 x i32] zeroinitializer, section "__DATA,__sancov_guards", align 4
@"\01section$start$__DATA$__sancov_guards" = extern_weak hidden global i32*
@"\01section$end$__DATA$__sancov_guards" = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* null }]
@llvm.used = appending global [5 x i8*] [i8* bitcast (i8** @main._B to i8*), i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*), i8* bitcast ([4 x i32]* @__sancov_gen_ to i8*), i8* bitcast ([4 x i32]* @__sancov_gen_.9 to i8*), i8* bitcast ([15 x i32]* @__sancov_gen_.10 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind ssp uwtable
define void @SpecFileGeneration(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !40 {
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !dbg !105, !nosanitize !106
  %5 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !105, !nosanitize !106
  %6 = getelementptr i8, i8* %5, i32 %4, !dbg !105
  %7 = load i8, i8* %6, align 1, !dbg !105, !nosanitize !106
  %8 = add i8 %7, 1, !dbg !105
  %9 = icmp eq i8 %8, 0, !dbg !105
  %10 = zext i1 %9 to i8, !dbg !105
  %11 = add i8 %8, %10, !dbg !105
  store i8 %11, i8* %6, align 1, !dbg !105, !nosanitize !106
  call void @llvm.dbg.value(metadata i8* %0, metadata !44, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %1, metadata !45, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %2, metadata !46, metadata !DIExpression()), !dbg !107
  %12 = tail call %struct.__sFILE* @"\01_fopen"(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !108
  call void @llvm.dbg.value(metadata %struct.__sFILE* %12, metadata !47, metadata !DIExpression()), !dbg !107
  %13 = icmp eq %struct.__sFILE* %12, null, !dbg !109
  br i1 %13, label %28, label %14, !dbg !111

14:                                               ; preds = %3
  %15 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([4 x i32]* @__sancov_gen_ to i64), i64 4) to i32*), align 4, !dbg !112, !nosanitize !106
  %16 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !112, !nosanitize !106
  %17 = getelementptr i8, i8* %16, i32 %15, !dbg !112
  %18 = load i8, i8* %17, align 1, !dbg !112, !nosanitize !106
  %19 = add i8 %18, 1, !dbg !112
  %20 = icmp eq i8 %19, 0, !dbg !112
  %21 = zext i1 %20 to i8, !dbg !112
  %22 = add i8 %19, %21, !dbg !112
  store i8 %22, i8* %17, align 1, !dbg !112, !nosanitize !106
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef nonnull %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2), !dbg !112
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* nonnull %12), !dbg !114
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef nonnull %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0), !dbg !115
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* nonnull %12), !dbg !116
  %27 = tail call i32 @fclose(%struct.__sFILE* noundef nonnull %12), !dbg !117
  br label %38, !dbg !118

28:                                               ; preds = %3
  %29 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([4 x i32]* @__sancov_gen_ to i64), i64 8) to i32*), align 4, !dbg !119, !nosanitize !106
  %30 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !119, !nosanitize !106
  %31 = getelementptr i8, i8* %30, i32 %29, !dbg !119
  %32 = load i8, i8* %31, align 1, !dbg !119, !nosanitize !106
  %33 = add i8 %32, 1, !dbg !119
  %34 = icmp eq i8 %33, 0, !dbg !119
  %35 = zext i1 %34 to i8, !dbg !119
  %36 = add i8 %33, %35, !dbg !119
  store i8 %36, i8* %31, align 1, !dbg !119, !nosanitize !106
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1), !dbg !119
  br label %38

38:                                               ; preds = %28, %14
  ret void, !dbg !121
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !122 noundef i32 @fclose(%struct.__sFILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind readonly ssp uwtable
define i8* @__memrchr(i8* noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 !dbg !126 {
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @__sancov_gen_.9, i32 0, i32 0), align 4, !dbg !138, !nosanitize !106
  %5 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !138, !nosanitize !106
  %6 = getelementptr i8, i8* %5, i32 %4, !dbg !138
  %7 = load i8, i8* %6, align 1, !dbg !138, !nosanitize !106
  %8 = add i8 %7, 1, !dbg !138
  %9 = icmp eq i8 %8, 0, !dbg !138
  %10 = zext i1 %9 to i8, !dbg !138
  %11 = add i8 %8, %10, !dbg !138
  store i8 %11, i8* %6, align 1, !dbg !138, !nosanitize !106
  call void @llvm.dbg.value(metadata i8* %0, metadata !134, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 %1, metadata !135, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i64 %2, metadata !136, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i8* %0, metadata !137, metadata !DIExpression()), !dbg !139
  %12 = and i32 %1, 255, !dbg !140
  call void @llvm.dbg.value(metadata i32 %12, metadata !135, metadata !DIExpression()), !dbg !139
  br label %13, !dbg !141

13:                                               ; preds = %31, %3
  %14 = phi i64 [ %2, %3 ], [ %15, %31 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !136, metadata !DIExpression()), !dbg !139
  %15 = add i64 %14, -1, !dbg !142
  call void @llvm.dbg.value(metadata i64 %15, metadata !136, metadata !DIExpression()), !dbg !139
  %16 = icmp eq i64 %14, 0, !dbg !141
  br i1 %16, label %17, label %26, !dbg !141

17:                                               ; preds = %13
  %18 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([4 x i32]* @__sancov_gen_.9 to i64), i64 4) to i32*), align 4, !dbg !141, !nosanitize !106
  %19 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !141, !nosanitize !106
  %20 = getelementptr i8, i8* %19, i32 %18, !dbg !141
  %21 = load i8, i8* %20, align 1, !dbg !141, !nosanitize !106
  %22 = add i8 %21, 1, !dbg !141
  %23 = icmp eq i8 %22, 0, !dbg !141
  %24 = zext i1 %23 to i8, !dbg !141
  %25 = add i8 %22, %24, !dbg !141
  store i8 %25, i8* %20, align 1, !dbg !141, !nosanitize !106
  br label %53, !dbg !141

26:                                               ; preds = %13
  %27 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !143
  %28 = load i8, i8* %27, align 1, !dbg !143, !tbaa !145
  %29 = sext i8 %28 to i32, !dbg !143
  %30 = icmp eq i32 %12, %29, !dbg !148
  br i1 %30, label %40, label %31, !dbg !149, !llvm.loop !150

31:                                               ; preds = %26
  %32 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([4 x i32]* @__sancov_gen_.9 to i64), i64 8) to i32*), align 4, !dbg !149, !nosanitize !106
  %33 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !149, !nosanitize !106
  %34 = getelementptr i8, i8* %33, i32 %32, !dbg !149
  %35 = load i8, i8* %34, align 1, !dbg !149, !nosanitize !106
  %36 = add i8 %35, 1, !dbg !149
  %37 = icmp eq i8 %36, 0, !dbg !149
  %38 = zext i1 %37 to i8, !dbg !149
  %39 = add i8 %36, %38, !dbg !149
  store i8 %39, i8* %34, align 1, !dbg !149, !nosanitize !106
  br label %13, !dbg !149

40:                                               ; preds = %26
  %41 = load i32*, i32** @__afl_api_spec, align 8, !dbg !143, !nosanitize !106
  %42 = load i32, i32* %41, align 4, !dbg !143, !nosanitize !106
  %43 = add i32 %42, 1, !dbg !143
  store i32 %43, i32* %41, align 4, !dbg !143, !nosanitize !106
  %44 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([4 x i32]* @__sancov_gen_.9 to i64), i64 12) to i32*), align 4, !dbg !143, !nosanitize !106
  %45 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !143, !nosanitize !106
  %46 = getelementptr i8, i8* %45, i32 %44, !dbg !143
  %47 = load i8, i8* %46, align 1, !dbg !143, !nosanitize !106
  %48 = add i8 %47, 1, !dbg !143
  %49 = icmp eq i8 %48, 0, !dbg !143
  %50 = zext i1 %49 to i8, !dbg !143
  %51 = add i8 %48, %50, !dbg !143
  store i8 %51, i8* %46, align 1, !dbg !143, !nosanitize !106
  %52 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !143
  br label %53, !dbg !153

53:                                               ; preds = %17, %40
  %54 = phi i8* [ %52, %40 ], [ null, %17 ], !dbg !139
  ret i8* %54, !dbg !153
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !2 {
  %1 = alloca [1024 x i8], align 1
  %2 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @__sancov_gen_.10, i32 0, i32 0), align 4, !dbg !154, !nosanitize !106
  %3 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !154, !nosanitize !106
  %4 = getelementptr i8, i8* %3, i32 %2, !dbg !154
  %5 = load i8, i8* %4, align 1, !dbg !154, !nosanitize !106
  %6 = add i8 %5, 1, !dbg !154
  %7 = icmp eq i8 %6, 0, !dbg !154
  %8 = zext i1 %7 to i8, !dbg !154
  %9 = add i8 %6, %8, !dbg !154
  store i8 %9, i8* %4, align 1, !dbg !154, !nosanitize !106
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 2
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** @main._B, align 8, !dbg !155, !tbaa !157
  %13 = load i32, i32* @__afl_connected, align 4, !dbg !155, !tbaa !159
  %14 = icmp eq i32 %13, 0, !dbg !155
  %15 = select i1 %14, i32 1, i32 1000, !dbg !155
  %16 = select i1 %14, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 28) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 32) to i32*), !dbg !155
  %17 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !155, !nosanitize !106
  %18 = load i32, i32* %16, align 4, !dbg !155, !nosanitize !106
  %19 = getelementptr i8, i8* %17, i32 %18, !dbg !155
  %20 = load i8, i8* %19, align 1, !dbg !155, !nosanitize !106
  %21 = add i8 %20, 1, !dbg !155
  %22 = icmp eq i8 %21, 0, !dbg !155
  %23 = zext i1 %22 to i8, !dbg !155
  %24 = add i8 %21, %23, !dbg !155
  store i8 %24, i8* %19, align 1, !dbg !155, !nosanitize !106
  %25 = call i32 @"\01___afl_persistent_loop"(i32 noundef %15) #9, !dbg !155
  %26 = icmp eq i32 %25, 0, !dbg !161
  br i1 %26, label %28, label %27, !dbg !161

27:                                               ; preds = %0
  br label %37, !dbg !161

28:                                               ; preds = %0
  %29 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 4) to i32*), align 4, !dbg !161, !nosanitize !106
  %30 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !161, !nosanitize !106
  %31 = getelementptr i8, i8* %30, i32 %29, !dbg !161
  %32 = load i8, i8* %31, align 1, !dbg !161, !nosanitize !106
  %33 = add i8 %32, 1, !dbg !161
  %34 = icmp eq i8 %33, 0, !dbg !161
  %35 = zext i1 %34 to i8, !dbg !161
  %36 = add i8 %33, %35, !dbg !161
  store i8 %36, i8* %31, align 1, !dbg !161, !nosanitize !106
  br label %128, !dbg !161

37:                                               ; preds = %110, %27
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %10) #9, !dbg !162
  call void @llvm.dbg.declare(metadata [1024 x i8]* %1, metadata !18, metadata !DIExpression()), !dbg !163
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !dbg !164, !tbaa !157
  %39 = call i8* @fgets(i8* noundef nonnull %10, i32 noundef 1024, %struct.__sFILE* noundef %38), !dbg !166
  %40 = icmp eq i8* %39, null, !dbg !167
  br i1 %40, label %77, label %41, !dbg !168

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i64 3, metadata !136, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 2, metadata !136, metadata !DIExpression()), !dbg !169
  %42 = load i8, i8* %11, align 1, !dbg !171, !tbaa !145
  %43 = icmp ne i8 %42, 97, !dbg !172
  %44 = load i8, i8* %12, align 1
  %45 = icmp ne i8 %44, 97
  %46 = select i1 %43, i1 %45, i1 false, !dbg !173
  %47 = select i1 %43, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 36) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 40) to i32*), !dbg !169
  %48 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !169, !nosanitize !106
  %49 = load i32, i32* %47, align 4, !dbg !169, !nosanitize !106
  %50 = getelementptr i8, i8* %48, i32 %49, !dbg !169
  %51 = load i8, i8* %50, align 1, !dbg !169, !nosanitize !106
  %52 = add i8 %51, 1, !dbg !169
  %53 = icmp eq i8 %52, 0, !dbg !169
  %54 = zext i1 %53 to i8, !dbg !169
  %55 = add i8 %52, %54, !dbg !169
  store i8 %55, i8* %50, align 1, !dbg !169, !nosanitize !106
  call void @llvm.dbg.value(metadata i64 2, metadata !136, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 1, metadata !136, metadata !DIExpression()), !dbg !169
  %56 = load i8, i8* %10, align 1
  %57 = icmp eq i8 %56, 97
  %58 = select i1 %46, i1 %57, i1 false, !dbg !173
  %59 = select i1 %46, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 44) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 48) to i32*), !dbg !169
  %60 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !169, !nosanitize !106
  %61 = load i32, i32* %59, align 4, !dbg !169, !nosanitize !106
  %62 = getelementptr i8, i8* %60, i32 %61, !dbg !169
  %63 = load i8, i8* %62, align 1, !dbg !169, !nosanitize !106
  %64 = add i8 %63, 1, !dbg !169
  %65 = icmp eq i8 %64, 0, !dbg !169
  %66 = zext i1 %65 to i8, !dbg !169
  %67 = add i8 %64, %66, !dbg !169
  store i8 %67, i8* %62, align 1, !dbg !169, !nosanitize !106
  call void @llvm.dbg.value(metadata i64 1, metadata !136, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !169
  br i1 %58, label %86, label %68, !dbg !173, !llvm.loop !174

68:                                               ; preds = %41
  %69 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 8) to i32*), align 4, !dbg !173, !nosanitize !106
  %70 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !173, !nosanitize !106
  %71 = getelementptr i8, i8* %70, i32 %69, !dbg !173
  %72 = load i8, i8* %71, align 1, !dbg !173, !nosanitize !106
  %73 = add i8 %72, 1, !dbg !173
  %74 = icmp eq i8 %73, 0, !dbg !173
  %75 = zext i1 %74 to i8, !dbg !173
  %76 = add i8 %73, %75, !dbg !173
  store i8 %76, i8* %71, align 1, !dbg !173, !nosanitize !106
  br label %95, !dbg !173

77:                                               ; preds = %37
  %78 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 12) to i32*), align 4, !dbg !177, !nosanitize !106
  %79 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !177, !nosanitize !106
  %80 = getelementptr i8, i8* %79, i32 %78, !dbg !177
  %81 = load i8, i8* %80, align 1, !dbg !177, !nosanitize !106
  %82 = add i8 %81, 1, !dbg !177
  %83 = icmp eq i8 %82, 0, !dbg !177
  %84 = zext i1 %83 to i8, !dbg !177
  %85 = add i8 %82, %84, !dbg !177
  store i8 %85, i8* %80, align 1, !dbg !177, !nosanitize !106
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #9, !dbg !177
  br label %128

86:                                               ; preds = %41
  %87 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 16) to i32*), align 4, !dbg !178, !nosanitize !106
  %88 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !178, !nosanitize !106
  %89 = getelementptr i8, i8* %88, i32 %87, !dbg !178
  %90 = load i8, i8* %89, align 1, !dbg !178, !nosanitize !106
  %91 = add i8 %90, 1, !dbg !178
  %92 = icmp eq i8 %91, 0, !dbg !178
  %93 = zext i1 %92 to i8, !dbg !178
  %94 = add i8 %91, %93, !dbg !178
  store i8 %94, i8* %89, align 1, !dbg !178, !nosanitize !106
  call void @llvm.dbg.value(metadata i8* %11, metadata !23, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), metadata !24, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), metadata !25, metadata !DIExpression()), !dbg !178
  call void @SpecFileGeneration(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0)), !dbg !179
  br label %95, !dbg !182

95:                                               ; preds = %68, %86
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #9, !dbg !177
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** @main._B, align 8, !dbg !155, !tbaa !157
  %96 = load i32, i32* @__afl_connected, align 4, !dbg !155, !tbaa !159
  %97 = icmp eq i32 %96, 0, !dbg !155
  %98 = select i1 %97, i32 1, i32 1000, !dbg !155
  %99 = select i1 %97, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 52) to i32*), i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 56) to i32*), !dbg !155
  %100 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !155, !nosanitize !106
  %101 = load i32, i32* %99, align 4, !dbg !155, !nosanitize !106
  %102 = getelementptr i8, i8* %100, i32 %101, !dbg !155
  %103 = load i8, i8* %102, align 1, !dbg !155, !nosanitize !106
  %104 = add i8 %103, 1, !dbg !155
  %105 = icmp eq i8 %104, 0, !dbg !155
  %106 = zext i1 %105 to i8, !dbg !155
  %107 = add i8 %104, %106, !dbg !155
  store i8 %107, i8* %102, align 1, !dbg !155, !nosanitize !106
  %108 = call i32 @"\01___afl_persistent_loop"(i32 noundef %98) #9, !dbg !155
  %109 = icmp eq i32 %108, 0, !dbg !161
  br i1 %109, label %119, label %110, !dbg !161

110:                                              ; preds = %95
  %111 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 20) to i32*), align 4, !dbg !161, !nosanitize !106
  %112 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !161, !nosanitize !106
  %113 = getelementptr i8, i8* %112, i32 %111, !dbg !161
  %114 = load i8, i8* %113, align 1, !dbg !161, !nosanitize !106
  %115 = add i8 %114, 1, !dbg !161
  %116 = icmp eq i8 %115, 0, !dbg !161
  %117 = zext i1 %116 to i8, !dbg !161
  %118 = add i8 %115, %117, !dbg !161
  store i8 %118, i8* %113, align 1, !dbg !161, !nosanitize !106
  br label %37, !dbg !161

119:                                              ; preds = %95
  %120 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([15 x i32]* @__sancov_gen_.10 to i64), i64 24) to i32*), align 4, !dbg !161, !nosanitize !106
  %121 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !161, !nosanitize !106
  %122 = getelementptr i8, i8* %121, i32 %120, !dbg !161
  %123 = load i8, i8* %122, align 1, !dbg !161, !nosanitize !106
  %124 = add i8 %123, 1, !dbg !161
  %125 = icmp eq i8 %124, 0, !dbg !161
  %126 = zext i1 %125 to i8, !dbg !161
  %127 = add i8 %124, %126, !dbg !161
  store i8 %127, i8* %122, align 1, !dbg !161, !nosanitize !106
  br label %128, !dbg !161

128:                                              ; preds = %119, %28, %77
  %129 = phi i32 [ 1, %77 ], [ 0, %28 ], [ 0, %119 ], !dbg !183
  ret i32 %129, !dbg !184
}

declare i32 @"\01___afl_persistent_loop"(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !185 noundef i8* @fgets(i8* noundef, i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #7

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #8 {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @"\01section$start$__DATA$__sancov_guards", i32** @"\01section$end$__DATA$__sancov_guards")
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree norecurse nosync nounwind readonly ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind uwtable "frame-pointer"="non-leaf" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_B", scope: !2, file: !3, line: 32, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 30, type: !4, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !17)
!3 = !DIFile(filename: "./myTestCases/main.c", directory: "/Users/shuangxiangkan/Fuzz/AFLplusplus")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Homebrew clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !16, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!8 = !DIFile(filename: "myTestCases/main.c", directory: "/Users/shuangxiangkan/Fuzz/AFLplusplus")
!9 = !{!10, !11, !13, !15}
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0}
!17 = !{!18, !23, !24, !25}
!18 = !DILocalVariable(name: "m", scope: !19, file: !3, line: 41, type: !20)
!19 = distinct !DILexicalBlock(scope: !2, file: !3, line: 33, column: 2)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 1024)
!23 = !DILocalVariable(name: "ret", scope: !19, file: !3, line: 46, type: !11)
!24 = !DILocalVariable(name: "fileName", scope: !19, file: !3, line: 51, type: !11)
!25 = !DILocalVariable(name: "funSignature", scope: !19, file: !3, line: 52, type: !11)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 1, !"branch-target-enforcement", i32 0}
!33 = !{i32 1, !"sign-return-address", i32 0}
!34 = !{i32 1, !"sign-return-address-all", i32 0}
!35 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 1}
!39 = !{!"Homebrew clang version 14.0.6"}
!40 = distinct !DISubprogram(name: "SpecFileGeneration", scope: !3, file: !3, line: 7, type: !41, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !13, !13, !13}
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(name: "specification", arg: 1, scope: !40, file: !3, line: 7, type: !13)
!45 = !DILocalVariable(name: "fileName", arg: 2, scope: !40, file: !3, line: 7, type: !13)
!46 = !DILocalVariable(name: "funSignature", arg: 3, scope: !40, file: !3, line: 7, type: !13)
!47 = !DILocalVariable(name: "file", scope: !40, file: !3, line: 9, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !50, line: 157, baseType: !51)
!50 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/_stdio.h", directory: "")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !50, line: 126, size: 1216, elements: !52)
!52 = !{!53, !55, !56, !57, !59, !60, !65, !66, !67, !71, !75, !85, !89, !90, !93, !94, !98, !102, !103, !104}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !51, file: !50, line: 127, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !51, file: !50, line: 128, baseType: !6, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !51, file: !50, line: 129, baseType: !6, size: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !50, line: 130, baseType: !58, size: 16, offset: 128)
!58 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !51, file: !50, line: 131, baseType: !58, size: 16, offset: 144)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !51, file: !50, line: 132, baseType: !61, size: 128, offset: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !50, line: 92, size: 128, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !61, file: !50, line: 93, baseType: !54, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !61, file: !50, line: 94, baseType: !6, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !51, file: !50, line: 133, baseType: !6, size: 32, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !51, file: !50, line: 136, baseType: !15, size: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !51, file: !50, line: 137, baseType: !68, size: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!6, !15}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !51, file: !50, line: 138, baseType: !72, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!6, !15, !11, !6}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !51, file: !50, line: 139, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !15, !79, !6}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !50, line: 81, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !81, line: 71, baseType: !82)
!81 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types.h", directory: "")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !83, line: 24, baseType: !84)
!83 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/arm/_types.h", directory: "")
!84 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !51, file: !50, line: 140, baseType: !86, size: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!6, !15, !13, !6}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !51, file: !50, line: 143, baseType: !61, size: 128, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !51, file: !50, line: 144, baseType: !91, size: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !50, line: 98, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !51, file: !50, line: 145, baseType: !6, size: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !51, file: !50, line: 148, baseType: !95, size: 24, offset: 928)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !51, file: !50, line: 149, baseType: !99, size: 8, offset: 952)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !51, file: !50, line: 152, baseType: !61, size: 128, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !51, file: !50, line: 155, baseType: !6, size: 32, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !50, line: 156, baseType: !79, size: 64, offset: 1152)
!105 = !DILocation(line: 8, scope: !40)
!106 = !{}
!107 = !DILocation(line: 0, scope: !40)
!108 = !DILocation(line: 9, column: 18, scope: !40)
!109 = !DILocation(line: 10, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !40, file: !3, line: 10, column: 9)
!111 = !DILocation(line: 10, column: 9, scope: !40)
!112 = !DILocation(line: 11, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !3, line: 10, column: 15)
!114 = !DILocation(line: 12, column: 9, scope: !113)
!115 = !DILocation(line: 13, column: 9, scope: !113)
!116 = !DILocation(line: 14, column: 9, scope: !113)
!117 = !DILocation(line: 15, column: 9, scope: !113)
!118 = !DILocation(line: 16, column: 5, scope: !113)
!119 = !DILocation(line: 18, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !110, file: !3, line: 16, column: 12)
!121 = !DILocation(line: 20, column: 1, scope: !40)
!122 = !DISubprogram(name: "fclose", scope: !123, file: !123, line: 143, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !106)
!123 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/stdio.h", directory: "")
!124 = !DISubroutineType(types: !125)
!125 = !{!6, !48}
!126 = distinct !DISubprogram(name: "__memrchr", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !133)
!127 = !DISubroutineType(types: !128)
!128 = !{!11, !13, !6, !129}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 31, baseType: !131)
!130 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !83, line: 70, baseType: !132)
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !{!134, !135, !136, !137}
!134 = !DILocalVariable(name: "m", arg: 1, scope: !126, file: !3, line: 22, type: !13)
!135 = !DILocalVariable(name: "c", arg: 2, scope: !126, file: !3, line: 22, type: !6)
!136 = !DILocalVariable(name: "n", arg: 3, scope: !126, file: !3, line: 22, type: !129)
!137 = !DILocalVariable(name: "s", scope: !126, file: !3, line: 24, type: !13)
!138 = !DILocation(line: 23, scope: !126)
!139 = !DILocation(line: 0, scope: !126)
!140 = !DILocation(line: 25, column: 6, scope: !126)
!141 = !DILocation(line: 26, column: 2, scope: !126)
!142 = !DILocation(line: 26, column: 10, scope: !126)
!143 = !DILocation(line: 26, column: 18, scope: !144)
!144 = distinct !DILexicalBlock(scope: !126, file: !3, line: 26, column: 18)
!145 = !{!146, !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C/C++ TBAA"}
!148 = !DILocation(line: 26, column: 22, scope: !144)
!149 = !DILocation(line: 26, column: 18, scope: !126)
!150 = distinct !{!150, !141, !151, !152}
!151 = !DILocation(line: 26, column: 46, scope: !126)
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 28, column: 1, scope: !126)
!154 = !DILocation(line: 30, scope: !2)
!155 = !DILocation(line: 32, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !2, file: !3, line: 32, column: 9)
!157 = !{!158, !158, i64 0}
!158 = !{!"any pointer", !146, i64 0}
!159 = !{!160, !160, i64 0}
!160 = !{!"int", !146, i64 0}
!161 = !DILocation(line: 32, column: 2, scope: !2)
!162 = !DILocation(line: 41, column: 3, scope: !19)
!163 = !DILocation(line: 41, column: 8, scope: !19)
!164 = !DILocation(line: 42, column: 27, scope: !165)
!165 = distinct !DILexicalBlock(scope: !19, file: !3, line: 42, column: 7)
!166 = !DILocation(line: 42, column: 7, scope: !165)
!167 = !DILocation(line: 42, column: 34, scope: !165)
!168 = !DILocation(line: 42, column: 7, scope: !19)
!169 = !DILocation(line: 0, scope: !126, inlinedAt: !170)
!170 = distinct !DILocation(line: 46, column: 15, scope: !19)
!171 = !DILocation(line: 26, column: 18, scope: !144, inlinedAt: !170)
!172 = !DILocation(line: 26, column: 22, scope: !144, inlinedAt: !170)
!173 = !DILocation(line: 26, column: 18, scope: !126, inlinedAt: !170)
!174 = distinct !{!174, !175, !176, !152}
!175 = !DILocation(line: 26, column: 2, scope: !126, inlinedAt: !170)
!176 = !DILocation(line: 26, column: 46, scope: !126, inlinedAt: !170)
!177 = !DILocation(line: 58, column: 2, scope: !2)
!178 = !DILocation(line: 0, scope: !19)
!179 = !DILocation(line: 56, column: 4, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 55, column: 3)
!181 = distinct !DILexicalBlock(scope: !19, file: !3, line: 54, column: 7)
!182 = !DILocation(line: 57, column: 3, scope: !180)
!183 = !DILocation(line: 0, scope: !2)
!184 = !DILocation(line: 61, column: 1, scope: !2)
!185 = !DISubprogram(name: "fgets", scope: !123, file: !123, line: 149, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !106)
!186 = !DISubroutineType(types: !187)
!187 = !{!11, !188, !6, !48}
!188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
