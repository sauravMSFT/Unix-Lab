#include <stdio.h>
#include <sys/stat.h>

int main(int argc, char **argv)
{
    int i = 1;
    struct stat buf;
    char *ptr;
    if (argc == 1)
    {
        printf("No arguments.. Abort.");
        return 0;
    }
    else
    {
        do
        {
            stat(argv[i], &buf);
            if (S_ISLNK(buf.st_mode))
                ptr = "Link File";
            else if (S_ISDIR(buf.st_mode))
                ptr = "Directory";
            else if (S_ISCHR(buf.st_mode))
                ptr = "Character File";
            else if (S_ISBLK(buf.st_mode))
                ptr = "Block File";
            else if (S_ISFIFO(buf.st_mode))
                ptr = "FIFO File";
            else if (S_ISREG(buf.st_mode))
                ptr = "Regular File";
            else
                ptr = "Unknown File";

            printf(" ...\t %s is a %s ...\n", argv[i], ptr);
            ++i;
        } while (i <= argc - 1);
    }
}