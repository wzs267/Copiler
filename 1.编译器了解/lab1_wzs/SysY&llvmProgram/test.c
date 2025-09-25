// 全局变量和常量
const int N = 5;
int global_array[5] = {3, 1, 4, 1, 5};

// 函数声明
int calculate(int a, int b);

int main() {
    int local_array[N];
    int sum = 0;
    int i = 0;
    
    // 数组赋值和算术运算
    while (i < N) {
        local_array[i] = global_array[i] * 2;
        sum = sum + local_array[i];
        i = i + 1;
    }
    
    // 条件判断
    if (sum > 20) {
        return calculate(sum, 2);
    } else {
        return sum % 3;
    }
}

// 函数定义：复杂计算
int calculate(int a, int b) {
    int result = 0;
    while (b > 0) {
        result = result + a;
        b = b - 1;
    }
    return result;
}
