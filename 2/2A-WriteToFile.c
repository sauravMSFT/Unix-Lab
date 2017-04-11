#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>


char data[] = "ABCDEFGHIJKLMNOP";
char offset[] = "0123456789abcdef";

int main()
{
    int fd = creat("file.txt", 0644);
    if (fd == -1)
    {
        perror("creat");
        exit(0);
    }
    write(fd, data, sizeof(data));
    lseek(fd, 40, 0);
    write(fd, offset, sizeof(offset));
    return 0;
}