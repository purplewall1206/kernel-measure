#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>

#include "measure.h"

LANTENCY();
#define FREQ 3.7

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
    register unsigned long rax __asm__ ("rax") = 1;
    register int rdi __asm__ ("rdi") = 1; // console 
    register const void *rsi __asm__ ("rsi") = text;
    register size_t rdx __asm__ ("rdx") = strlen(text);
    RDTSC_START();
    // __asm__ volatile("int $0xff\n\t":::);
    // write(1, "test", 4);
    __asm__ volatile(
        "syscall"
        : "+r"(rax)
        : "r"(rdi), "r"(rsi), "r"(rdx)
        : "rcx", "r11", "memory"
    );
    RDTSC_STOP();
    printf("test4 cycles: %ld\n", CYCLES());
}

void test5()
{
    char text[] = "test5\n";
    register unsigned long rax __asm__ ("rax") = 1;
    register int rdi __asm__ ("rdi") = 1; // console 
    register const void *rsi __asm__ ("rsi") = text;
    register size_t rdx __asm__ ("rdx") = strlen(text);
    RDTSC_START();
    // __asm__ volatile("int $0xff\n\t":::);
    // write(1, "test", 4);
    __asm__ volatile(
        "int $0x80 \n\t"
        : "+r"(rax)
        : "r"(rdi), "r"(rsi), "r"(rdx)
        : "rcx", "r11", "memory"
    );
    RDTSC_STOP();
    printf("test5 cycles: %ld\n", CYCLES());
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
    for (int i = 0;i < 5;i++) {
        test4();
    }

    for (int i = 0;i < 5;i++) {
        test5();
    }
    // test4();
    return 0;
}