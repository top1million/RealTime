
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
#include <math.h>

int distance = 50 ;
int teamFlag =0;
int reset_round = 0 ;
int g_drawer_pid = 0;
void signal_catcher(int);
void round_reset_func(int);

int main(int argc, char *argv[])
{
    if (argc != 2) {                 /* check if the user entered the correct number of arguments */

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

    if(strcmp("team1", argv[1]) == 0){
        teamFlag = 1 ;           /* set the team flag to 1 if the player is from team one */
    }
    else{
        teamFlag = 2 ;          /* set the team flag to 2 if the player is from team two */
    }
    int drawer_pid = toint(argv[0]); /* get the pid of the drawer process */
    g_drawer_pid = drawer_pid;
    kill(getppid(),10); /* send signal 10 to parent to indicate that the child is ready */
    while(1); /* keep the process running */
    
    
    
    return 0;
}

void signal_catcher(int sig){ 
    int k =5;
    int speed = 0;
    while (k > 0){
    srand(time(NULL));
    int randz = rand()%(4-2 + 1) + 2; /* set the speed of the player */
    speed = 5+getpid()%randz;
    k--;
    }
    reset_round = 0;         /* reset the round flag */
    distance  = 50;         /* reset the distance */

    while(distance > 0 && reset_round == 0){ /* while the distance is not zero and the round flag is not set, keep running */
        printf("Player from team %d with pid %d is running at speed %d, >>> left distance is: %d \n", teamFlag, getpid(),speed,distance);
        if(speed == 5 && teamFlag == 1){
            kill(g_drawer_pid,20); /* send signal 20 to the drawer process to draw the player */
        }
        else if(speed == 6 && teamFlag == 1){
            kill(g_drawer_pid,21); /* send signal 21 to the drawer process to draw the player */
        }
        else if(speed == 7 && teamFlag == 1){
            kill(g_drawer_pid,22); /* send signal 22 to the drawer process to draw the player */
        }
        else if(speed == 8 && teamFlag == 1){
            kill(g_drawer_pid,23); /* send signal 23 to the drawer process to draw the player */
        }
        else if(speed == 9 && teamFlag ==1){
            kill(g_drawer_pid,24); /* send signal 24 to the drawer process to draw the player */
        }
        else if(speed == 5 && teamFlag == 2){
            kill(g_drawer_pid,25); /* send signal 24 to the drawer process to draw the player */
        }
        else if(speed == 6 && teamFlag == 2){
            kill(g_drawer_pid,26); /* send signal 25 to the drawer process to draw the player */
        }
        else if(speed == 7 && teamFlag == 2){
            kill(g_drawer_pid,27); /* send signal 26 to the drawer process to draw the player */
        }
        else if(speed == 8 && teamFlag == 2){
            kill(g_drawer_pid,28); /* send signal 27 to the drawer process to draw the player */
        }
        else if(speed == 9 && teamFlag ==2){
            kill(g_drawer_pid,29); /* send signal 28 to the drawer process to draw the player */
        }
        
        distance -= speed;
        sleep(1);
    }
    if(teamFlag == 1 && reset_round == 0) { /* if the player is from team one and the round flag is not set, send signal to parent */
        kill(getppid(), 12);
        kill(g_drawer_pid,30);
        printf("\n>> Player from team %d with pid (%d) finsihed his turn \n",teamFlag, getpid());
    }
    else if (teamFlag == 2 && reset_round == 0){ /* if the player is from team two and the round flag is not set, send signal to parent */
        kill(getppid(), 13);
        kill(g_drawer_pid,31);
        printf("\n>> Player from team %d with pid (%d) finsihed his turn \n",teamFlag, getpid());
    }
    else if ( reset_round == 1){ /* if the round flag is set, send signal to parent */
        printf("\nThe other team has won the game, waiting for the next round ...\n\n");
    }

}




void round_reset_func(int sig){ /* this function is called when the parent sends a signal to reset the round */
    reset_round = 1 ;
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