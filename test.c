#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>

#include "measure.h"

LANTENCY();
#define FREQ 3.7

void print(unsigned long *records, int len)
{
    unsigned long average = 0;
    for (int i = 0;i < len;i++) {
        if (i % 20000 == 0) {
            printf("%ld  ", records[i]);
        }
        
        average += records[i];
    }
    printf("\n\n\n");
    printf("average cycles: %ld/1000000 = %ld\n", average, average/1000000);

    
}

void test0()
{
    RDTSC_START();
	sleep(1);
	RDTSC_STOP();
    printf("cycles: %ld %.2f\n", CYCLES(), CYCLES()/FREQ);
}

void test1()
{
    RDTSC_START();
	int a = 10;
	RDTSC_STOP();
    printf("test1 cycles: %ld %d\n", CYCLES(), a);
}

void test2()
{
    RDTSC_START();
    __asm__ volatile("mov %%rax, %%r10\n\t" \
                    :::);
    RDTSC_STOP();
    printf("test2 cycles: %ld\ntest2 time: %.2f ns\n", CYCLES(), (double)CYCLES()/FREQ);
}

void test3()
{
    RDTSC_START();
    __asm__ volatile("int $0x80\n\t":::);
    RDTSC_STOP();
    printf("test3 cycles: %ld\n", CYCLES());
}

void test4()
{
    char text[] = "test4\n";
    
    RDTSC_START();
    ssize_t ret;
    asm volatile
    (
        "int $0x80"
        : "=a" (ret)
        : "0"(4), "b"(1), "c"(text), "d"(strlen(text))
        : "memory"    // the kernel dereferences pointer args
    );

    RDTSC_STOP();
    printf("test4 cycles: %ld\n", CYCLES());
}

void test5()
{
    char text[] = "test5\n";

    RDTSC_START();
    ssize_t ret;
    asm volatile
    (
        "syscall"
        : "=a"(ret)
        //        EDI      RSI       RDX
        : "0"(1), "D"(1), "S"(text), "d"(strlen(text))
        : "rcx", "r11", "memory"
    );
    RDTSC_STOP();
    printf("test5 cycles: %ld\n", CYCLES());

    // write(1, "test\n", 5);
    // test5 cycles: 14132
    // test5
    // test5 cycles: 1244
    // test5
    // test5 cycles: 984
    // test5
    // test5 cycles: 936
    // test5
    // test5 cycles: 942
    // test5
    // test5 cycles: 936
    // test5
    // test5 cycles: 906
    // test5
    // test5 cycles: 902
    // test5
    // test5 cycles: 920
    // test5
    // test5 cycles: 924
}

// #PF test
void test6()
{
    void *mem = malloc(4096 * 100); // 3 pages
    unsigned long records[100];
    int index = 0;
    unsigned long load = 0;
    
    // if there is PF
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        load = *(unsigned long*)(mem + i*8);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        load = *(unsigned long*) (mem + 4096 * 20 + i*8);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        load = *(unsigned long*) (mem + 4096 * 50 + i*8);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }


    // if there is cache load miss
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        load = *(unsigned long*) (mem + 4096 * 50 + i*8);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        load = *(unsigned long*) (mem + 4096 * 20 + i);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    // write cache miss ?
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        *(unsigned long*) (mem + i*8) = 1;
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

        // strange thing happens here
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        *(unsigned long*) (mem + 4096 * 50 + i*8) = 1;
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    for (int i = 0;i < 70;i++) {
        if (i % 10 == 0) {
            printf("\n\n");
        }
        printf("%ld  ", records[i]);
    }

    printf("\n\n\n");

    free(mem);
// 34  32  32  34  32  32  38  34  32  32  

// 1452  34  34  32  34  34  38  34  34  34  

// 1308  32  32  32  34  32  38  32  32  34  

// 32  34  34  34  32  32  34  34  32  34  

// 30  30  32  32  32  30  32  32  30  32  

// 36  32  30  30  30  30  30  30  30  32  

// 3368(这里按理说应该有个write cache miss？？但是为什么开销这么大，之前已经触发过一次#PF了啊，难不成是copy on write？)  32  32  32  30  32  30  32  30  32 

// 其中比较明显的1000+ cycles两个位置就是page fault

}
void null()
{

}

int null0() {
    return 0;
}

int null5(int a, int b, int c, int d, int e) {
    return a;
}

void test7()
{
    unsigned long records[100];
    int index = 0;

    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        null();
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        null0();
        RDTSC_STOP();
        records[index++] = CYCLES();
    }


    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        null5(1, 2, 3, 4, 5);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    for (int i = 0;i < 40;i++) {
        if (i % 10 == 0) {
            printf("\n\n");
        }
        printf("%ld  ", records[i]);
    }

    printf("\n\n\n");

// 54  34  32  64  30  32  32  32  32  30  

// 30  34  32  32  30  32  32  34  32  32  

// 30  32  34  34  34  36  34  34  36  34  

// 32  32  34  34  32  34  32  34  34  32  
}

void test8()
{
    unsigned long records[100];
    int index = 0;
    char *mem = (char*)malloc(sizeof(char) * 4096);
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        memset(mem, 'c', 1);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        memset(mem, 'c', 100);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        memset(mem, 'c', 2000);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }
    for (int i = 0;i < 10;i++) {
        RDTSC_START();
        memset(mem, 'c', 4096);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }

    printf("%c\n", mem[1000]);
    unsigned long average = 0;
    unsigned long record1[1000000];
    int index1 = 0;
    for (int i = 0;i < 1000000;i++) {
        RDTSC_START();
        // memset(mem, 'c', 4096);
        // mem[0] = 'c';
        __asm__ volatile ("mov %%rax, %%rax\n\t":::);
        RDTSC_STOP();
        record1[index1++] = CYCLES();
        average += CYCLES();
    }
    printf("average cycles: %ld/1000000 = %ld\n", average, average/1000000);

    for (int i = 0;i < 40;i++) {
        if (i % 10 == 0) {
            printf("\n\n");
        }
        printf("%ld  ", records[i]);
    }

    // for (int i = 0;i < 1000000;i++) {
    //     if (i % 20 == 0) {
    //         printf("\n\n");
    //     }
    //     printf("%ld  ", record1[i]);
    // }

//     average cycles: 29294222/1000000 = 29 单个mov指令大概 29 个cycle


// 224  58  56  54  32  32  32  32  32  32  

// 98  90  38  36  34  34  36  34  34  36  100个mov 

// 202  94  82  74  76  58  58  58  56  56  2000个mov

// 216  132  132  108  110  106  108  106  110  108   4096个mov，所以单个mov到底是几个cycle？原理是什么？

    printf("\n\n\n");
}

void test9()
{
    unsigned long records[1000000];
    int index = 0;
    unsigned long average = 0;

    for (int i = 0;i < 1000000;i++) {
        RDTSC_START();
        __asm__ volatile("rdtsc\n\t":::);
        RDTSC_STOP();
        records[index++] = CYCLES();
    }
    print(records, 1000000);
}

int main()
{
    // for (int i = 0;i < 5;i++) {
        // test0();
    // } 
    // for (int i = 0;i < 5;i++) {
    //     test1();
    // } 
    // for (int i = 0;i < 5;i++) {
    //     test2();
    // } 
    // test3();
    // for (int i = 0;i < 5;i++) {
    //     test4();
    // }

    // for (int i = 0;i < 10;i++) {
    //     test5();
    // }
    // // test4();

    // test6();

    // test7();

    // test8();

    test9();
    return 0;
}


// 搞清楚int 0x80和syscall的区别

// 增加procfs entry和注册irq

