#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>

#define LENGTH 20
int main()
{
    int pid, status;
    char buffer[LENGTH];

    pid = fork();
    if (pid == -1)
    {
        perror("Fork failed. Exit..");
        return -1;
    }
    else if (pid == 0)
    {
        printf("Enter a valid UNIX command: ");
        if (fgets(buffer, LENGTH, stdin) != NULL)
            system(buffer);
    }
    else wait(&status);
}
