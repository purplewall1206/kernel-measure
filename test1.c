#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>

int main()
{
    unsigned long a = 8;
    unsigned long b = 0;

    __asm__ volatile("movq  %0, %%rax \n\t" \
                    "movq  %%rax, %1 \n\t" \
                    : "=r"(b) \
                    : "b"(a) \
                    : 
    );

    printf("%ld\n", b);
    return 0;
}