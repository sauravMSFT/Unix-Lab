#include <sys/times.h>
#include <unistd.h>
#include <stdlib.h>

int printf(const char *, ...);

int main(int argc, char **argv)
{
    long end, start, clk;

    if (argc == 1)
    {
        printf("No arguments. Abort.");
        return 0;
    }
    start = times(NULL);
    system("clear");
    system(argv[1]);
    end = times(NULL);

    clk = sysconf(_SC_CLK_TCK);
    printf("Time taken = %lfs", (end - start) / (double)clk);
    return 0;
}