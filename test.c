#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>

#include "measure.h"

LANTENCY();
#define FREQ 3.7

void test0()
{
    RDTSC_START();
	sleep(1);
	RDTSC_STOP();
    printf("cycles: %ld %ld\n", CYCLES(), CYCLES()/FREQ);
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
    printf("test2 cycles: %ld\ntest2 time: %f ns\n", CYCLES(), (double)CYCLES()/FREQ);
}

int main()
{
    // for (int i = 0;i < 5;i++) {
        test0();
    // } 
    for (int i = 0;i < 5;i++) {
        test1();
    } 
    for (int i = 0;i < 5;i++) {
        test2();
    } 
    return 0;
}