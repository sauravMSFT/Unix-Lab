#include <stdio.h>
#include <sys/types.h>
#include <sys/times.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    struct tms r1, r2;
    clock_t end, start;
    long clk;

    if (argc == 1)
    {
        printf("No arguments. Abort.");
        return 0;
    }
    start = times(&r1);
    system("clear");
    system(argv[1]);
    end = times(&r2);

    clk = sysconf(_SC_CLK_TCK);
    printf("Time taken = %lf", (end - start) / (double)clk);
    return 0;
}