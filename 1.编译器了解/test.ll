@N = dso_local constant i32 5, align 4
@global_array = dso_local global [5 x i32] [i32 2, i32 2, i32 3, i32 4, i32 5], align 16
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 5, ptr %4, align 4
  br label %7

7:                                               
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

11:                                             
  %12 = load i32, ptr %2, align 4
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5 x i32], ptr @global_array, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %12, %16
  store i32 %17, ptr %2, align 4
  %18 = load i32, ptr %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4
  br label %7, !llvm.loop !6

20:                                              
  %21 = load i32, ptr %2, align 4
  %22 = icmp sgt i32 %21, 20
  br i1 %22, label %23, label %27

23:                                              
  %24 = load i32, ptr %2, align 4
  %25 = call i32 @calculate(i32 noundef %24, i32 noundef 2)
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %5, align 4
  call void @putint(i32 noundef %26)
  call void @putch(i32 noundef 10)
  br label %31

27:                                              
  %28 = load i32, ptr %2, align 4
  %29 = srem i32 %28, 3
  store i32 %29, ptr %6, align 4
  %30 = load i32, ptr %6, align 4
  call void @putint(i32 noundef %30)
  call void @putch(i32 noundef 10)
  br label %31

31:                                              
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculate(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                               
  %7 = load i32, ptr %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                               
  %10 = load i32, ptr %5, align 4
  %11 = load i32, ptr %3, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, ptr %5, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, ptr %4, align 4
  br label %6, !llvm.loop !8

15:                                             
  %16 = load i32, ptr %5, align 4
  ret i32 %16
}

declare void @putint(i32 noundef) #1
declare void @putch(i32 noundef) #1
