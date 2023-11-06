; ModuleID = './myTestCases/main.c'
source_filename = "./myTestCases/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"m: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ret: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__memrchr(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 !dbg !12 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !25, metadata !DIExpression()), !dbg !26
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %8, metadata !29, metadata !DIExpression()), !dbg !30
  %9 = load i8*, i8** %5, align 8, !dbg !31
  store i8* %9, i8** %8, align 8, !dbg !30
  %10 = load i32, i32* %6, align 4, !dbg !32
  %11 = trunc i32 %10 to i8, !dbg !33
  %12 = zext i8 %11 to i32, !dbg !33
  store i32 %12, i32* %6, align 4, !dbg !34
  br label %13, !dbg !35

13:                                               ; preds = %29, %3
  %14 = load i64, i64* %7, align 8, !dbg !36
  %15 = add i64 %14, -1, !dbg !36
  store i64 %15, i64* %7, align 8, !dbg !36
  %16 = icmp ne i64 %14, 0, !dbg !35
  br i1 %16, label %17, label %30, !dbg !35

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8, !dbg !37
  %19 = load i64, i64* %7, align 8, !dbg !40
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !37
  %21 = load i8, i8* %20, align 1, !dbg !37
  %22 = sext i8 %21 to i32, !dbg !37
  %23 = load i32, i32* %6, align 4, !dbg !41
  %24 = icmp eq i32 %22, %23, !dbg !42
  br i1 %24, label %25, label %29, !dbg !43

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8, !dbg !44
  %27 = load i64, i64* %7, align 8, !dbg !46
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !47
  store i8* %28, i8** %4, align 8, !dbg !48
  br label %31, !dbg !48

29:                                               ; preds = %17
  br label %13, !dbg !35, !llvm.loop !49

30:                                               ; preds = %13
  store i8* null, i8** %4, align 8, !dbg !52
  br label %31, !dbg !52

31:                                               ; preds = %30, %25
  %32 = load i8*, i8** %4, align 8, !dbg !53
  ret i8* %32, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !57, metadata !DIExpression()), !dbg !61
  %4 = call i32 (...) @__AFL_FUZZ_INIT(), !dbg !62
  br label %5, !dbg !63

5:                                                ; preds = %8, %0
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @__AFL_LOOP to i32 (i32, ...)*)(i32 noundef 1000), !dbg !64
  %7 = icmp ne i32 %6, 0, !dbg !63
  br i1 %7, label %8, label %18, !dbg !63

8:                                                ; preds = %5
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false), !dbg !65
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !67
  %11 = call i64 @read(i32 noundef 0, i8* noundef %10, i64 noundef 100), !dbg !68
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !69
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %12), !dbg !70
  call void @llvm.dbg.declare(metadata i8** %3, metadata !71, metadata !DIExpression()), !dbg !72
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !73
  %15 = call i8* @__memrchr(i8* noundef %14, i32 noundef 97, i64 noundef 3), !dbg !74
  store i8* %15, i8** %3, align 8, !dbg !72
  %16 = load i8*, i8** %3, align 8, !dbg !75
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef %16), !dbg !76
  br label %5, !dbg !63, !llvm.loop !77

18:                                               ; preds = %5
  ret i32 0, !dbg !79
}

declare dso_local i32 @__AFL_FUZZ_INIT(...) #2

declare dso_local i32 @__AFL_LOOP(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "myTestCases/main.c", directory: "/home/kansx/Fuzz/AFLplusplus", checksumkind: CSK_MD5, checksum: "5c8ccbd678b6f72616bea155d216bf16")
!2 = !{!3, !4}
!3 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.0"}
!12 = distinct !DISubprogram(name: "__memrchr", scope: !13, file: !13, line: 12, type: !14, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!13 = !DIFile(filename: "./myTestCases/main.c", directory: "/home/kansx/Fuzz/AFLplusplus", checksumkind: CSK_MD5, checksum: "5c8ccbd678b6f72616bea155d216bf16")
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-14.0.0.obj/lib/clang/14.0.0/include/stddef.h", directory: "/home/kansx", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{}
!23 = !DILocalVariable(name: "m", arg: 1, scope: !12, file: !13, line: 12, type: !16)
!24 = !DILocation(line: 12, column: 29, scope: !12)
!25 = !DILocalVariable(name: "c", arg: 2, scope: !12, file: !13, line: 12, type: !18)
!26 = !DILocation(line: 12, column: 36, scope: !12)
!27 = !DILocalVariable(name: "n", arg: 3, scope: !12, file: !13, line: 12, type: !19)
!28 = !DILocation(line: 12, column: 46, scope: !12)
!29 = !DILocalVariable(name: "s", scope: !12, file: !13, line: 14, type: !16)
!30 = !DILocation(line: 14, column: 14, scope: !12)
!31 = !DILocation(line: 14, column: 18, scope: !12)
!32 = !DILocation(line: 15, column: 21, scope: !12)
!33 = !DILocation(line: 15, column: 6, scope: !12)
!34 = !DILocation(line: 15, column: 4, scope: !12)
!35 = !DILocation(line: 16, column: 2, scope: !12)
!36 = !DILocation(line: 16, column: 10, scope: !12)
!37 = !DILocation(line: 18, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !13, line: 18, column: 7)
!39 = distinct !DILexicalBlock(scope: !12, file: !13, line: 17, column: 2)
!40 = !DILocation(line: 18, column: 9, scope: !38)
!41 = !DILocation(line: 18, column: 13, scope: !38)
!42 = !DILocation(line: 18, column: 11, scope: !38)
!43 = !DILocation(line: 18, column: 7, scope: !39)
!44 = !DILocation(line: 20, column: 20, scope: !45)
!45 = distinct !DILexicalBlock(scope: !38, file: !13, line: 19, column: 3)
!46 = !DILocation(line: 20, column: 22, scope: !45)
!47 = !DILocation(line: 20, column: 21, scope: !45)
!48 = !DILocation(line: 20, column: 4, scope: !45)
!49 = distinct !{!49, !35, !50, !51}
!50 = !DILocation(line: 22, column: 2, scope: !12)
!51 = !{!"llvm.loop.mustprogress"}
!52 = !DILocation(line: 23, column: 2, scope: !12)
!53 = !DILocation(line: 25, column: 1, scope: !12)
!54 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 27, type: !55, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!55 = !DISubroutineType(types: !56)
!56 = !{!18}
!57 = !DILocalVariable(name: "buf", scope: !54, file: !13, line: 29, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1024)
!61 = !DILocation(line: 29, column: 7, scope: !54)
!62 = !DILocation(line: 31, column: 2, scope: !54)
!63 = !DILocation(line: 32, column: 2, scope: !54)
!64 = !DILocation(line: 32, column: 9, scope: !54)
!65 = !DILocation(line: 40, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !54, file: !13, line: 33, column: 2)
!67 = !DILocation(line: 41, column: 11, scope: !66)
!68 = !DILocation(line: 41, column: 3, scope: !66)
!69 = !DILocation(line: 43, column: 21, scope: !66)
!70 = !DILocation(line: 43, column: 3, scope: !66)
!71 = !DILocalVariable(name: "ret", scope: !66, file: !13, line: 44, type: !4)
!72 = !DILocation(line: 44, column: 9, scope: !66)
!73 = !DILocation(line: 44, column: 25, scope: !66)
!74 = !DILocation(line: 44, column: 15, scope: !66)
!75 = !DILocation(line: 45, column: 23, scope: !66)
!76 = !DILocation(line: 45, column: 3, scope: !66)
!77 = distinct !{!77, !63, !78, !51}
!78 = !DILocation(line: 46, column: 2, scope: !54)
!79 = !DILocation(line: 48, column: 2, scope: !54)
