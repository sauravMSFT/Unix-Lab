#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#define LENGTH 20
int main()
{
    pid_t ProcessId;
    int Status;

    char buffer[LENGTH];
    ProcessId = fork();

    if (ProcessId == -1)
    {
        perror("Fork failed. Exit..");
        return -1;
    }
    else if (ProcessId == 0)
    {
        printf("Enter a valid UNIX command: ");
        if (fgets(buffer, LENGTH, stdin) != NULL)
            system(buffer);
    }
    else waitpid(ProcessId, &Status, 0);
}