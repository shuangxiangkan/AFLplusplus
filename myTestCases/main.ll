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
@__stdinp = external global %struct.__sFILE*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"__memrchr.cpp\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"void *__memrchr(const void *m, int c, size_t n)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ret == valuestring\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @SpecFileGeneration(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__sFILE*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.__sFILE* @"\01_fopen"(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.__sFILE* %9, %struct.__sFILE** %7, align 8
  %10 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %11 = icmp ne %struct.__sFILE* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %14)
  %16 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %19)
  %21 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %23 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %24 = call i32 @fclose(%struct.__sFILE* noundef %23)
  br label %28

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %26)
  br label %28

28:                                               ; preds = %25, %12
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8* noundef, i8* noundef) #1

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #1

declare i32 @fclose(%struct.__sFILE* noundef) #1

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @__memrchr(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = trunc i32 %10 to i8
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %7, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %4, align 8
  br label %31

29:                                               ; preds = %17
  br label %13, !llvm.loop !9

30:                                               ; preds = %13
  store i8* null, i8** %4, align 8
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %24, %0
  %7 = call i32 bitcast (i32 (...)* @__AFL_LOOP to i32 (i32)*)(i32 noundef 1000)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %12 = call i8* @fgets(i8* noundef %10, i32 noundef 1024, %struct.__sFILE* noundef %11)
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %17 = call i8* @__memrchr(i8* noundef %16, i32 noundef 97, i64 noundef 3)
  store i8* %17, i8** %3, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  call void @SpecFileGeneration(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* noundef %22, i8* noundef %23)
  br label %24

24:                                               ; preds = %21, %15
  br label %6, !llvm.loop !11

25:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare i32 @__AFL_LOOP(...) #1

declare i8* @fgets(i8* noundef, i32 noundef, %struct.__sFILE* noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{!"Homebrew clang version 14.0.6"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
