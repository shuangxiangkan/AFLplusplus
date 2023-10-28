; ModuleID = './myTestCases/insert.c'
source_filename = "./myTestCases/insert.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"a = %d, b = %d\0A\00", align 1
@__afl_area_ptr = external global i8*
@__sancov_gen_ = private global [2 x i32] zeroinitializer, section "__DATA,__sancov_guards", align 4
@"\01section$start$__DATA$__sancov_guards" = extern_weak hidden global i32*
@"\01section$end$__DATA$__sancov_guards" = extern_weak hidden global i32*
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 2, void ()* @sancov.module_ctor_trace_pc_guard, i8* null }]
@llvm.used = appending global [2 x i8*] [i8* bitcast (void ()* @sancov.module_ctor_trace_pc_guard to i8*), i8* bitcast ([2 x i32]* @__sancov_gen_ to i8*)], section "llvm.metadata"

; Function Attrs: nofree nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !13 {
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__sancov_gen_, i32 0, i32 0), align 4, !dbg !21, !nosanitize !22
  %2 = load i8*, i8** @__afl_area_ptr, align 8, !dbg !21, !nosanitize !22
  %3 = getelementptr i8, i8* %2, i32 %1, !dbg !21
  %4 = load i8, i8* %3, align 1, !dbg !21, !nosanitize !22
  %5 = add i8 %4, 1, !dbg !21
  %6 = icmp eq i8 %5, 0, !dbg !21
  %7 = zext i1 %6 to i8, !dbg !21
  %8 = add i8 %5, %7, !dbg !21
  store i8 %8, i8* %3, align 1, !dbg !21, !nosanitize !22
  call void @llvm.dbg.value(metadata i32 1, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 2, metadata !20, metadata !DIExpression()), !dbg !23
  %9 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef 2), !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare void @__sanitizer_cov_trace_pc_guard_init(i32**, i32**)

; Function Attrs: nounwind uwtable
define internal void @sancov.module_ctor_trace_pc_guard() #3 {
  call void @__sanitizer_cov_trace_pc_guard_init(i32** @"\01section$start$__DATA$__sancov_guards", i32** @"\01section$end$__DATA$__sancov_guards")
  ret void
}

attributes #0 = { nofree nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind uwtable "frame-pointer"="non-leaf" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk", sdk: "MacOSX13.sdk")
!1 = !DIFile(filename: "myTestCases/insert.c", directory: "/Users/shuangxiangkan/Fuzz/AFLplusplus")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"branch-target-enforcement", i32 0}
!6 = !{i32 1, !"sign-return-address", i32 0}
!7 = !{i32 1, !"sign-return-address-all", i32 0}
!8 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 1}
!12 = !{!"Homebrew clang version 14.0.6"}
!13 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 2, type: !15, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!14 = !DIFile(filename: "./myTestCases/insert.c", directory: "/Users/shuangxiangkan/Fuzz/AFLplusplus")
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "a", scope: !13, file: !14, line: 4, type: !17)
!20 = !DILocalVariable(name: "b", scope: !13, file: !14, line: 4, type: !17)
!21 = !DILocation(line: 3, scope: !13)
!22 = !{}
!23 = !DILocation(line: 0, scope: !13)
!24 = !DILocation(line: 5, column: 5, scope: !13)
!25 = !DILocation(line: 6, column: 5, scope: !13)
