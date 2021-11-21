#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// asm ( assembler template
//     : output operands                   (optional)
//     : input operands                    (optional)
//     : clobbered registers list          (optional)
//     );


// static inline void cpuid(int code, unsigned int* a, unsigned int* d)
// {
//     asm volatile ( "cpuid" : "=a"(*a), "=d"(*d) : "0"(code) : "ebx", "ecx" );
// }

static inline void cpuid(unsigned int *eax, unsigned int* ebx, unsigned int* ecx, unsigned int* edx) 
{
    asm volatile (
        "cpuid\n\t"
        : "=a"(*eax), "=b"(*ebx), "=c"(*ecx), "=d"(*edx)
        : "0"(*eax)
    );
}

void getCPUID(unsigned int code) 
{
    unsigned int eax, ebx, ecx, edx;
    eax = code;
    cpuid(&eax, &ebx, &ecx, &edx);
    if (code == 0)
        printf("%016lx  %s  %s  %s\n", eax, &ebx, &ecx, &edx);
    else 
        printf("%08lx, %08lx, %08lx, %08lx\n", eax, ebx, ecx, edx);
}

static inline unsigned long int rdtsc()
{
    unsigned long int ret;
    asm volatile ( "rdtsc" : "=A"(ret) );
    // On x86_64, the "A" constraint expects to write into the "rdx:rax" registers instead of "edx:eax"
    return ret;
}

unsigned long int rdtsc1(void)
{
    unsigned int low, high;
    asm volatile("rdtsc":"=a"(low),"=d"(high));
    return ((unsigned long int)high << 32) | low;
}

void getTIME(void)
{
    struct timespec tstart={0,0}, tend={0,0};
    clock_gettime(CLOCK_REALTIME, &tstart);
    // some_long_computation();
    clock_gettime(CLOCK_REALTIME, &tend);
    printf("%lu, %lu, %lu, %lu\n", tend.tv_sec, tend.tv_nsec, tstart.tv_sec, tstart.tv_nsec);
}

int main()
{
    getCPUID(0);
    getCPUID(1);
    printf("%llu\n%llu\n%llu\n%llu\n", rdtsc(), rdtsc(), rdtsc(), rdtsc1());

    getTIME();

    printf("%u %u %u %u\n", sizeof(unsigned long), sizeof(long long), sizeof(long), sizeof(unsigned long int));
    return 0;
}