#include "local.h"

int genderFlag=0;
void join_the_queue(int);

int main(int argc, char *argv[])
{
    if (sigset(10,join_the_queue)==-1){
    perror("Sigset can not set SIGUSR1");
    exit(SIGINT);
  }
    if (argc != 2) {                 /* check if the user entered the correct number of arguments */

    printf("Invalid arguments: %d\n", argc);
    exit(-1);
    } 
    if(strcmp("male", argv[1]) == 0){
        genderFlag = 1 ;           /* set the team flag to 1 if the player is from team one */
    }
    else{
        genderFlag = 2 ;          /* set the team flag to 2 if the player is from team two */
    }
    int drawer_pid = toint(argv[0]); /* get the pid of the drawer process */
    g_drawer_pid = drawer_pid;
    kill(getppid(),10); /* send signal 10 to parent to indicate that the child is ready */
    while(1); /* keep the process running */
    
    
    
    return 0;
}

void join_the_queue(int sig)
{
    if(genderFlag == 1){
        kill(g_drawer_pid, 10);
    }
    else{
        kill(g_drawer_pid, 12);
    }
}



int toint(char str[])
{
    int len = strlen(str);
    int i, num = 0;
    for (i = 0; i < len; i++)
    {
        num = num + ((str[len - (i + 1)] - '0') * pow(10, i));
    }

    return num;
}