#ifndef MEASURE_H
#define MEASURE_H

#define LANTENCY()  \
    unsigned int start_hi = 0, start_lo = 0; \
    unsigned int end_hi = 0, end_lo = 0;

#define CYCLES() \
    get_cycles(start_hi, start_lo, end_hi, end_lo)

// Use the preprocessor so we know definitively that these are placed inline
#define RDTSC_START()            \
	__asm__ volatile("CPUID\n\t" \
	                 "RDTSC\n\t" \
	                 "mov %%edx, %0\n\t" \
	                 "mov %%eax, %1\n\t" \
	                 : "=r" (start_hi), "=r" (start_lo) \
	                 :: "%rax", "%rbx", "%rcx", "%rdx");

#define RDTSC_STOP()              \
	__asm__ volatile("RDTSCP\n\t" \
	                 "mov %%edx, %0\n\t" \
	                 "mov %%eax, %1\n\t" \
	                 "CPUID\n\t" \
	                 : "=r" (end_hi), "=r" (end_lo) \
	                 :: "%rax", "%rbx", "%rcx", "%rdx");

// Returns the elapsed time given the high and low bits of the start and stop time.
unsigned long get_cycles(unsigned int start_hi, unsigned int start_lo,
                 unsigned int end_hi,   unsigned int end_lo)
{
	unsigned long start = (((unsigned long)start_hi) << 32) | start_lo;
	unsigned long end   = (((unsigned long)end_hi)   << 32) | end_lo;
	return end-start;
}


#endif // MEASURE_H