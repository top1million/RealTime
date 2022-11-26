/*
 * The fork() function
 */
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
  int i, status;
  pid_t pid, pid_array[5];
  
  printf("My process ID is %d\n", getpid());
  
  for ( i = 0; i < 5; i++ ) {
    pid = fork();
    printf("test");
    if ( pid == 0 ) {
      printf("I am the child  => PID = %d\n", getpid());
      while(1);
    }
    else {
      printf("I am the parent => PID = %d, child ID = %d\n", getpid(), pid);
      pid_array[i] = pid;
    }
  }
  //while( 1 ) {
    printf("test");
    for ( i = 0; i < 5; i++ ) {
      if (pid = wait(&status)) {
	printf("Process ID %d has terminated\n", pid);
      }
    }
  //}
  
  return(0);
}
