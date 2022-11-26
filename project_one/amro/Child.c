// Path: Child.c
// CHILDREN WILL EXECUTE Child.c
// PARENT WILL EXECUTE Parent.c

#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("CHILD: My process ID is %d \n", getpid());
    printf("CHILD: My parent's process ID is %d\n", getppid());
    return 0;
}