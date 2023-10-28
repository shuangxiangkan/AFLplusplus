; ModuleID = './myTestCases/insert.c'
source_filename = "./myTestCases/insert.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@__afl_area_ptr = external global i8*
@__afl_api_spec = external global i32
@__sancov_gen_ = private global [5 x i32] zeroinitializer, section "__DATA,__sancov_guards", align 4
@"\01section$start$__DATA$__sancov_guards" = extern_weak hidden global i32*
@"\01section$end$__DATA$__sancov_guards" = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* null }]
@llvm.used = appending global [2 x i8*] [i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*), i8* bitcast ([5 x i32]* @__sancov_gen_ to i8*)], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind readonly ssp uwtable
define i8* @__memrchr(i8* noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 !dbg !16 {
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !dbg !35, !nosanitize !36
  %5 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !35, !nosanitize !36
  %6 = getelementptr i8, i8* %5, i32 %4, !dbg !35
  %7 = load i8, i8* %6, align 1, !dbg !35, !nosanitize !36
  %8 = add i8 %7, 1, !dbg !35
  %9 = icmp eq i8 %8, 0, !dbg !35
  %10 = zext i1 %9 to i8, !dbg !35
  %11 = add i8 %8, %10, !dbg !35
  store i8 %11, i8* %6, align 1, !dbg !35, !nosanitize !36
  call void @llvm.dbg.value(metadata i8* %0, metadata !29, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i32 %1, metadata !30, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i64 %2, metadata !31, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i8* %0, metadata !32, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i32 %1, metadata !30, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !37
  %12 = trunc i32 %1 to i8
  br label %13, !dbg !38

13:                                               ; preds = %30, %3
  %14 = phi i64 [ %2, %3 ], [ %15, %30 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !31, metadata !DIExpression()), !dbg !37
  %15 = add i64 %14, -1, !dbg !39
  call void @llvm.dbg.value(metadata i64 %15, metadata !31, metadata !DIExpression()), !dbg !37
  %16 = icmp eq i64 %14, 0, !dbg !38
  br i1 %16, label %17, label %26, !dbg !38

17:                                               ; preds = %13
  %18 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_ to i64), i64 4) to i32*), align 4, !dbg !38, !nosanitize !36
  %19 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !38, !nosanitize !36
  %20 = getelementptr i8, i8* %19, i32 %18, !dbg !38
  %21 = load i8, i8* %20, align 1, !dbg !38, !nosanitize !36
  %22 = add i8 %21, 1, !dbg !38
  %23 = icmp eq i8 %22, 0, !dbg !38
  %24 = zext i1 %23 to i8, !dbg !38
  %25 = add i8 %22, %24, !dbg !38
  store i8 %25, i8* %20, align 1, !dbg !38, !nosanitize !36
  br label %51, !dbg !38

26:                                               ; preds = %13
  %27 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !40
  %28 = load i8, i8* %27, align 1, !dbg !40, !tbaa !42
  %29 = icmp eq i8 %28, %12, !dbg !45
  br i1 %29, label %39, label %30, !dbg !46, !llvm.loop !47

30:                                               ; preds = %26
  %31 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_ to i64), i64 8) to i32*), align 4, !dbg !46, !nosanitize !36
  %32 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !46, !nosanitize !36
  %33 = getelementptr i8, i8* %32, i32 %31, !dbg !46
  %34 = load i8, i8* %33, align 1, !dbg !46, !nosanitize !36
  %35 = add i8 %34, 1, !dbg !46
  %36 = icmp eq i8 %35, 0, !dbg !46
  %37 = zext i1 %36 to i8, !dbg !46
  %38 = add i8 %35, %37, !dbg !46
  store i8 %38, i8* %33, align 1, !dbg !46, !nosanitize !36
  br label %13, !dbg !46

39:                                               ; preds = %26
  %40 = load i32, i32* @__afl_api_spec, align 4, !dbg !40, !nosanitize !36
  %41 = add i32 %40, 1, !dbg !40
  store i32 %41, i32* @__afl_api_spec, align 4, !dbg !40, !nosanitize !36
  %42 = load i32, i32* inttoptr (i64 add (i64 ptrtoint ([5 x i32]* @__sancov_gen_ to i64), i64 12) to i32*), align 4, !dbg !40, !nosanitize !36
  %43 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !40, !nosanitize !36
  %44 = getelementptr i8, i8* %43, i32 %42, !dbg !40
  %45 = load i8, i8* %44, align 1, !dbg !40, !nosanitize !36
  %46 = add i8 %45, 1, !dbg !40
  %47 = icmp eq i8 %46, 0, !dbg !40
  %48 = zext i1 %47 to i8, !dbg !40
  %49 = add i8 %46, %48, !dbg !40
  store i8 %49, i8* %44, align 1, !dbg !40, !nosanitize !36
  %50 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !40
  br label %51, !dbg !50

51:                                               ; preds = %17, %39
  %52 = phi i8* [ %50, %39 ], [ null, %17 ], !dbg !37
  ret i8* %52, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #2 {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @"\01section$start$__DATA$__sancov_guards", i32** @"\01section$end$__DATA$__sancov_guards")
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind readonly ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="non-leaf" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!1 = !DIFile(filename: "myTestCases/insert.c", directory: "/Users/shuangxiangkan/Fuzz/AFLplusplus")
!2 = !{!3, !4}
!3 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 1, !"branch-target-enforcement", i32 0}
!9 = !{i32 1, !"sign-return-address", i32 0}
!10 = !{i32 1, !"sign-return-address-all", i32 0}
!11 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 1}
!15 = !{!"Homebrew clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "__memrchr", scope: !17, file: !17, line: 3, type: !18, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!17 = !DIFile(filename: "./myTestCases/insert.c", directory: "/Users/shuangxiangkan/Fuzz/AFLplusplus")
!18 = !DISubroutineType(types: !19)
!19 = !{!4, !20, !22, !23}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 31, baseType: !25)
!24 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !26, line: 70, baseType: !27)
!26 = !DIFile(filename: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include/arm/_types.h", directory: "")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32}
!29 = !DILocalVariable(name: "m", arg: 1, scope: !16, file: !17, line: 3, type: !20)
!30 = !DILocalVariable(name: "c", arg: 2, scope: !16, file: !17, line: 3, type: !22)
!31 = !DILocalVariable(name: "n", arg: 3, scope: !16, file: !17, line: 3, type: !23)
!32 = !DILocalVariable(name: "s", scope: !16, file: !17, line: 5, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!35 = !DILocation(line: 4, scope: !16)
!36 = !{}
!37 = !DILocation(line: 0, scope: !16)
!38 = !DILocation(line: 7, column: 2, scope: !16)
!39 = !DILocation(line: 7, column: 10, scope: !16)
!40 = !DILocation(line: 7, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !16, file: !17, line: 7, column: 18)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 7, column: 22, scope: !41)
!46 = !DILocation(line: 7, column: 18, scope: !16)
!47 = distinct !{!47, !38, !48, !49}
!48 = !DILocation(line: 7, column: 46, scope: !16)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 9, column: 1, scope: !16)
