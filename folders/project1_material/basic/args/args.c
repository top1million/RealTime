/*
* Displaying the contents of argv[] (the command line)
 */
#include <stdio.h>

int main(int argc, char *argv[])
{	
  printf("%s",*argv);
  
  printf("argc = %d\n", argc);
  
  return(0);
}
