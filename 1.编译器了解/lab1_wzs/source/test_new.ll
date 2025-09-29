; 目标平台信息 - 消除编译警告
target triple = "x86_64-pc-linux-gnu"

; 全局常量和数组
@N = constant i32 5
@global_array = global [5 x i32] [i32 2, i32 2, i32 3, i32 4, i32 5]
; 外部函数声明
declare void @putint(i32)
declare void @putch(i32)

; main 函数
define i32 @main() {
entry:
    ; 局部变量初始化
    %sum = alloca i32
    %i = alloca i32
    %count = alloca i32
    
    store i32 0, ptr %sum        ; sum = 0
    store i32 0, ptr %i          ; i = 0
    store i32 5, ptr %count      ; count = 5
    
    br label %while_check

while_check:
    ; 检查循环条件: i < count
    %i_val = load i32, ptr %i
    %count_val = load i32, ptr %count
    %cmp = icmp slt i32 %i_val, %count_val
    br i1 %cmp, label %while_body, label %while_end

while_body:
    ; 循环体: sum = sum + global_array[i]
    %sum_val = load i32, ptr %sum
    %i_curr = load i32, ptr %i
    
    ; 计算 global_array[i] 的地址
    %array_ptr = getelementptr [5 x i32], ptr @global_array, i32 0, i32 %i_curr
    %array_val = load i32, ptr %array_ptr
    
    ; sum = sum + global_array[i]
    %new_sum = add i32 %sum_val, %array_val
    store i32 %new_sum, ptr %sum
    
    ; i = i + 1
    %new_i = add i32 %i_curr, 1
    store i32 %new_i, ptr %i
    
    br label %while_check

while_end:
    ; if (sum > 20)
    %final_sum = load i32, ptr %sum
    %if_cmp = icmp sgt i32 %final_sum, 20
    br i1 %if_cmp, label %then_branch, label %else_branch

then_branch:
    ; int result = calculate(sum, 2);
    %result = call i32 @calculate(i32 %final_sum, i32 2)
    
    ; putint(result); putch(10);
    call void @putint(i32 %result)
    call void @putch(i32 10)
    br label %exit

else_branch:
    ; int remainder = sum % 3;
    %remainder = srem i32 %final_sum, 3
    
    ; putint(remainder); putch(10);
    call void @putint(i32 %remainder)
    call void @putch(i32 10)
    br label %exit

exit:
    ret i32 0
}

; calculate 函数
define i32 @calculate(i32 %a, i32 %b) {
entry:
    ; 局部变量
    %result = alloca i32
    %b_local = alloca i32
    
    store i32 0, ptr %result     ; result = 0
    store i32 %b, ptr %b_local   ; 保存参数 b
    
    br label %loop_check

loop_check:
    ; 检查循环条件: b > 0
    %b_val = load i32, ptr %b_local
    %loop_cmp = icmp sgt i32 %b_val, 0
    br i1 %loop_cmp, label %loop_body, label %loop_end

loop_body:
    ; result = result + a
    %result_val = load i32, ptr %result
    %new_result = add i32 %result_val, %a
    store i32 %new_result, ptr %result
    
    ; b = b - 1
    %b_curr = load i32, ptr %b_local
    %new_b = sub i32 %b_curr, 1
    store i32 %new_b, ptr %b_local
    
    br label %loop_check

loop_end:
    %final_result = load i32, ptr %result
    ret i32 %final_result
}
