
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
void signal_catcher(int);
int distance = 50 ;

int main(int argc, char *argv[])
{
    int teamFlag = 0 ;
    printf("%s this is shit \n", *argv);
    kill(getppid(),SIGINT);
    if(strcmp("shit", *argv) == 0){
        printf("i am in team one\n");
        teamFlag = 1 ;
    }
    else{
        printf("i am in team two\n");
        teamFlag = 2 ;
    }
    printf("Invoked CHILD: My process ID is %d \n", getppid());
    if(sigset(3, signal_catcher) == -1){
        perror("Sigset can not set SIGINT");
        exit(SIGINT);
    }
    // if (teamFlag == 1){
    //     kill(getppid(), 10);
    // }
    // else{
    //     kill(getppid(), 12);
    // }
    
    return 0;
}

void signal_catcher(int sig){
    int speed = (rand() %(8-5 +1)) + 5;
    while(distance > 0){
        printf("Child %d is running at speed %d \n", getpid(), speed);
        distance -= speed;
        sleep(1);
    }
    printf("\nholyshit\n");
}
//  generate random number between 5 and 8