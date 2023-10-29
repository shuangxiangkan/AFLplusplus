; ModuleID = './myTestCases/test.c'
source_filename = "./myTestCases/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$add = comdat nodeduplicate

$main = comdat nodeduplicate

$sancov.module_ctor_trace_pc_guard = comdat any

@__afl_area_ptr = external global i8*
@__afl_api_spec = external global i32*
@__sancov_gen_ = private global [2 x i32] zeroinitializer, section "__sancov_guards", comdat($add), align 4
@__sancov_gen_.1 = private global [1 x i32] zeroinitializer, section "__sancov_guards", comdat($main), align 4
@__start___sancov_guards = extern_weak hidden global i32*
@__stop___sancov_guards = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*) }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast ([2 x i32]* @__sancov_gen_ to i8*), i8* bitcast ([1 x i32]* @__sancov_gen_.1 to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define i32 @add(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat !dbg !8 {
  %3 = load i32*, i32** @__afl_api_spec, align 8, !dbg !16, !nosanitize !17
  %4 = load i32, i32* %3, align 4, !dbg !16, !nosanitize !17
  %5 = add i32 %4, 1, !dbg !16
  store i32 %5, i32* %3, align 4, !dbg !16, !nosanitize !17
  %6 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !dbg !16, !nosanitize !17
  %7 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !16, !nosanitize !17
  %8 = getelementptr i8, i8* %7, i32 %6, !dbg !16
  %9 = load i8, i8* %8, align 1, !dbg !16, !nosanitize !17
  %10 = add i8 %9, 1, !dbg !16
  %11 = icmp eq i8 %10, 0, !dbg !16
  %12 = zext i1 %11 to i8, !dbg !16
  %13 = add i8 %10, %12, !dbg !16
  store i8 %13, i8* %8, align 1, !dbg !16, !nosanitize !17
  call void @llvm.dbg.value(metadata i32 %0, metadata !14, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 %1, metadata !15, metadata !DIExpression()), !dbg !18
  %14 = add nsw i32 %1, %0, !dbg !19
  ret i32 %14, !dbg !20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 comdat !dbg !21 {
  %3 = load i32*, i32** @__afl_api_spec, align 8, !dbg !33, !nosanitize !17
  %4 = load i32, i32* %3, align 4, !dbg !33, !nosanitize !17
  %5 = add i32 %4, 1, !dbg !33
  store i32 %5, i32* %3, align 4, !dbg !33, !nosanitize !17
  %6 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @__sancov_gen_.1, i32 0, i32 0), align 4, !dbg !33, !nosanitize !17
  %7 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !33, !nosanitize !17
  %8 = getelementptr i8, i8* %7, i32 %6, !dbg !33
  %9 = load i8, i8* %8, align 1, !dbg !33, !nosanitize !17
  %10 = add i8 %9, 1, !dbg !33
  %11 = icmp eq i8 %10, 0, !dbg !33
  %12 = zext i1 %11 to i8, !dbg !33
  %13 = add i8 %10, %12, !dbg !33
  store i8 %13, i8* %8, align 1, !dbg !33, !nosanitize !17
  call void @llvm.dbg.value(metadata i32 %0, metadata !28, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i8** %1, metadata !29, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 1, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 2, metadata !31, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 undef, metadata !32, metadata !DIExpression()), !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #2 comdat {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @__start___sancov_guards, i32** @__stop___sancov_guards)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "myTestCases/test.c", directory: "/home/kansx/Fuzz/AFLplusplus", checksumkind: CSK_MD5, checksum: "c64749f709e982133742baeae3218298")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 14.0.0"}
!8 = distinct !DISubprogram(name: "add", scope: !9, file: !9, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "./myTestCases/test.c", directory: "/home/kansx/Fuzz/AFLplusplus", checksumkind: CSK_MD5, checksum: "c64749f709e982133742baeae3218298")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !8, file: !9, line: 3, type: !12)
!16 = !DILocation(line: 4, scope: !8)
!17 = !{}
!18 = !DILocation(line: 0, scope: !8)
!19 = !DILocation(line: 5, column: 14, scope: !8)
!20 = !DILocation(line: 5, column: 5, scope: !8)
!21 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 8, type: !22, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!22 = !DISubroutineType(types: !23)
!23 = !{!12, !12, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28, !29, !30, !31, !32}
!28 = !DILocalVariable(name: "argc", arg: 1, scope: !21, file: !9, line: 8, type: !12)
!29 = !DILocalVariable(name: "argv", arg: 2, scope: !21, file: !9, line: 8, type: !24)
!30 = !DILocalVariable(name: "a", scope: !21, file: !9, line: 10, type: !12)
!31 = !DILocalVariable(name: "b", scope: !21, file: !9, line: 11, type: !12)
!32 = !DILocalVariable(name: "c", scope: !21, file: !9, line: 12, type: !12)
!33 = !DILocation(line: 9, scope: !21)
!34 = !DILocation(line: 0, scope: !21)
!35 = !DILocation(line: 13, column: 5, scope: !21)
