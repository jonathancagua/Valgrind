#include <stdlib.h>
#include <stdint.h>
void f(void)
{
    uint32_t* x = malloc(10 * sizeof(uint32_t));
    x[10] = 0;        // problem 1: heap block overrun
}                    // problem 2: memory leak -- x not freed

int main(void)
{
    f();
    return 0;
}