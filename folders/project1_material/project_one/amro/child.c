
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>

int distance = 50 ;
int teamFlag =0;
int reset_round = 0 ;

void signal_catcher(int);
void round_reset_func(int);

int main(int argc, char *argv[])
{
    if (argc != 1) {                 /* check if the user entered the correct number of arguments */

    printf("Invalid arguments: %d\n", argc);
    exit(-1);
    } 

    if(sigset(3, signal_catcher) == -1){  /* set the signal catcher for signal 3 */
        perror("Sigset can not set SIGQUIT");
        exit(SIGINT);
    }
    if(sigset(15,round_reset_func) == -1){  /* set the signal catcher for signal 15 */
        perror("Sigset can not set SIGTERM");
        exit(SIGINT);
    }

    if(strcmp("team1", *argv) == 0){
        teamFlag = 1 ;           /* set the team flag to 1 if the player is from team one */
    }
    else{
        teamFlag = 2 ;          /* set the team flag to 2 if the player is from team two */
    }

    kill(getppid(),10); /* send signal 10 to parent to indicate that the child is ready */
    while(1); /* keep the process running */
    
    
    
    return 0;
}

void signal_catcher(int sig){ 
    int k =5;
    int speed = 0;
    while (k > 0){
    srand(time(NULL));
    int randz = rand()%(8-5 + 1) + 5; /* set the speed of the player */
    speed = 3+getpid()%randz;
    k--;
    }
    reset_round = 0;         /* reset the round flag */
    distance  = 50;         /* reset the distance */

    while(distance > 0 && reset_round == 0){ /* while the distance is not zero and the round flag is not set, keep running */
        printf("Player from team %d with pid %d is running at speed %d, >>> left distance is: %d \n", teamFlag, getpid(),speed,distance);
        // we should draw somthing in the opengl window here
        distance -= speed;
        sleep(1);
    }
    if(teamFlag == 1 && reset_round == 0) { /* if the player is from team one and the round flag is not set, send signal to parent */
        kill(getppid(), 12);
        printf("\n>> Player from team %d with pid (%d) finsihed his turn \n",teamFlag, getpid());
    }
    else if (teamFlag == 2 && reset_round == 0){ /* if the player is from team two and the round flag is not set, send signal to parent */
        kill(getppid(), 13);
        printf("\n>> Player from team %d with pid (%d) finsihed his turn \n",teamFlag, getpid());
    }
    else if ( reset_round == 1){ /* if the round flag is set, send signal to parent */
        printf("\nThe other team has won the game, waiting for the next round ...\n\n");
    }

}


void round_reset_func(int sig){ /* this function is called when the parent sends a signal to reset the round */
    reset_round = 1 ;
}