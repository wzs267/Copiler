#include <stdio.h>

#define MAX_ITERATIONS 10

int main() {
    int a = 0, b = 1, next, i;

    printf("Fibonacci Series up to %d terms:\n", MAX_ITERATIONS);
    
    for (i = 0; i < MAX_ITERATIONS; i++) {
        if (i <= 1) {
            next = i;
        } else {
            next = a + b;
            a = b;
            b = next;
        }
        printf("%d ", next);
    }
    printf("\n");
    return 0;
}

