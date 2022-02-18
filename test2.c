#include <stdio.h>

int main()
{
    // asm("mov  $335, %%eax\n\t"  \
    //         "int $0x80\n\t" \
    //         :::);
    // printf("%d  %d\n", syscall(102), getuid());
    // printf("%d\n", syscall(335));
    asm("int $0x3B");
    return 0;
}