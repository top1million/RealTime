
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
void signal_catcher(int);
void round_reset_func(int);
int distance = 50 ;
int teamFlag =0;
int speed = 0;
int reset_round = 0 ;
int main(int argc, char *argv[])
{
    speed = 5;
    // printf("%s this is shit \n", *argv);
    sleep(1);
    kill(getppid(),10);
    if(strcmp("shit", *argv) == 0){
        teamFlag = 1 ;
    }
    else{
        teamFlag = 2 ;
    }
    // printf("Invoked CHILD: My process ID is %d \n", getppid());

    while(1){
    if(sigset(3, signal_catcher) == -1){
        perror("Sigset can not set SIGINT");
        exit(SIGINT);
    }
    if(sigset(15,round_reset_func) == -1){
        perror("Sigset can not set SIGINT");
        exit(SIGINT);
    }
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
    int speed = 3+getpid()%5;
    reset_round = 0;
    distance  = 50;
    while(distance > 0 && reset_round == 0){
        printf("Player from team %d with pid %d is running at speed %d left distance is %d \n", teamFlag, getpid(),speed,distance);
        distance -= speed;
        sleep(1);
    }
    if(teamFlag == 1 && reset_round == 0) {
        kill(getppid(), 12);
        printf("Player from team %d with pid %d finsihed his round\n",teamFlag,getpid());
    }
    else if (teamFlag == 2 && reset_round == 0){
        kill(getppid(), 13);
        printf("Player from team %d with pid %d finsihed his round\n",teamFlag,getpid());
    }
    else if ( reset_round == 1){
        printf("the other team has won the game waiting for the next round \n");
    }

}
//  generate random number between 5 and 8


void round_reset_func(int sig){
    reset_round = 1 ;
}