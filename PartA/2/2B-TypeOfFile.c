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
            lstat(argv[i], &buf);
            switch (buf.st_mode & S_IFMT)
            {
            case S_IFLNK:
                ptr = "Link File";
                break;
            case S_IFDIR:
                ptr = "Directory";
                break;
            case S_IFCHR:
                ptr = "Character File";
                break;
            case S_IFBLK:
                ptr = "Block File";
                break;
            case S_IFIFO:
                ptr = "FIFO File";
                break;
            case S_IFREG:
                ptr = "Regular File";
                break;
            default:
                ptr = "Unknown File";
            }
            printf(" ...\t %s is a %s ...\n", argv[i], ptr);
            ++i;
        } while (i <= argc - 1);
    }
}