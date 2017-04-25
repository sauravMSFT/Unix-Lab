#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

char data[] = "ABCDEFGHIJKLMNOP";
char offset[] = "0123456789abcdef";

int main()
{
    int fd = creat("file.txt", 0644);
    if (fd == -1)
    {
        perror("unable to create file");
        return 0;
    }
    write(fd, data, sizeof(data));
    lseek(fd, 48, 0);
    write(fd, offset, sizeof(offset));
    return 0;
}
