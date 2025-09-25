// 全局变量和常量声明
const int N = 5;
int global_array[5] = {2,2,3,4,5};

// SysY运行时库函数声明 - 必须添加这些声明才能调用库函数
void putint(int);       // 输出一个整数
void putch(int);        // 输出一个字符

// 函数声明
int calculate(int a, int b);

int main() {

    int sum = 0;
    int i = 0;
    
    // 使用getarray从输入获取数据，替换原来的固定数组赋值
    int count = 5;

    
    // 算术运算：计算数组元素的和
    while (i < count) {  // 使用实际读取的元素个数
        sum = sum + global_array[i];
        i = i + 1;
    }
    
    // 条件判断和输出
    if (sum > 20) {
        int result = calculate(sum, 2);
    putint(result);  // 使用putint输出结果而不是直接return
    putch(10);      // 输出换行符
    } else {
        int remainder = sum % 3;
    putint(remainder); // 使用putint输出结果
    putch(10);        // 输出换行符
    }
    
    return 0;  // main函数返回0表示正常结束
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