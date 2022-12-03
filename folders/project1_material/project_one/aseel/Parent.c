/*
 * The fork() function
 this file shows how to just let the parent create children 
 ! to avoid exec failure : No such file or directory, compile the child file with the parent file
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#define  ROUNDS 3 
#define  numOfPlayers 4
#define  NUM_OF_TEAMS  2
int points [NUM_OF_TEAMS];

void terminate();
void terminate_all(int);
void players_ready();
void response_received(int);
void response_received2(int);
void signal_catcher_ready_state(int);
void reset_round();
void announce_winner();
int ready_counter = 0; 
int first_team_counter = 0;
int second_team_counter = 1;
id_t pid, players[numOfPlayers] ;
int team_one_winning_counter = 0;
int team_two_winning_counter = 0;
int rounds = 0;

int main()
{
  int i;
  printf("please enter the number of rounds you want the players to play : ");
  scanf("%d", &rounds);
  printf("My process ID is %d\n", getpid());
  if ( sigset(10, signal_catcher_ready_state) == -1 ) {
  perror("Sigset can not set SIGINT");
  exit(SIGINT);
  }
  if (sigset(12, response_received) == -1) {
    perror("Sigset can not set SIGINT");
    exit(SIGINT);
  }
    if (sigset(13, response_received2) == -1) {
    perror("Sigset can not set SIGINT");
    exit(SIGINT);
  }
  for ( i = 0; i < numOfPlayers; i++ ) 
  {
    sleep(2);
    pid = fork();

    // case 0: failure to create child
    if (pid == -1) { 
      printf("fork failure ... getting out\n");
      exit (-1);
    }
    // case 1: childe process 
    if ( pid == 0 ) { 
      sleep(1);
      // printf("\nI am the child  => PID = %d\n", getpid());
      if(i%2 == 0 )
      execlp("./fork4", "shit", (char *) NULL); // cat: concatinate 
      else
      execlp("./fork4", "shitno", (char *) NULL); // cat: concatinate
      perror("exec failure "); // this when there is an exec failure : No such file or directory
      while(1); 
    }
    // case 2: parent process
    else
      // printf("I am the parent => PID = %d\n", getpid());
      players[i] = pid; //! saves the id of my child
  }


  while(1){
  if (ready_counter == numOfPlayers ){
    printf("All players are ready \n Sending signal to all players to start \n");
    for(int i = 0 ; i < 2 ; i ++){
      printf("sending signal to player %d\n", players[i]);
      kill(players[i], 3);
    }
    break;
  }
  }

  while(1);
  


  // while(1); 
  /*{
    //  if received response start the game
  }*/

  return(0);
}

void signal_catcher_ready_state(int sig_num)
{
  printf("Received signal \n");
  ready_counter ++;
  printf("*************%d******************\n",ready_counter);
}



void response_received(int signum) 
{
  announce_winner();
  printf("1 idiot has finished \n");
  first_team_counter+= 2;
  if(first_team_counter < numOfPlayers){
    printf("sending signal to player %d\n", players[first_team_counter]);
  kill(players[first_team_counter], 3);
  }
  else{
    team_one_winning_counter++;
    printf("shit please shit please %d",team_one_winning_counter);
    announce_winner();
    reset_round();
  }
}




void response_received2(int signum) 
{
  
  printf("2 idiot has finished \n");
  second_team_counter+= 2;
  printf("2nd team conunter %d\n", second_team_counter);
  if(second_team_counter < numOfPlayers){
    printf("sending signal to player %d\n", players[second_team_counter]);
  kill(players[second_team_counter], 3);
  }
  else{
    team_two_winning_counter++;
    printf("shit please shit please %d",team_two_winning_counter);
    announce_winner();
    reset_round();
  }
}

void reset_round(){
  first_team_counter = 0;
  second_team_counter = 1;
  kill(players[first_team_counter], 3);
  kill(players[second_team_counter], 3);
}


// 0 1 2 3     0==team1    1==team2     2==team1    3==team2


void announce_winner(){
  if(team_one_winning_counter == rounds){
      printf("team one won the game \n");
      exit(0);
    }
    else if(team_two_winning_counter == rounds){
      printf("team two won the game \n");
      exit(0);
    }
    if(team_one_winning_counter == rounds && team_two_winning_counter == rounds){
      printf("the game is draw \n");
      exit(0);
    }
}
















/*

1,6        2,7      3,8      4,9       numOfPlayers,10
0           1        2        3        4



1  === > [1,2,3,4,numOfPlayers]  , [1]
it will sends for two
random number 7-10
x=numOfPlayers0
while (x>0){
  x-=speed(random(7-10))
  wait(1000)
}
pid = pid of the after one
kill(pid, SIGUSR1)
 

pid_array_team_one[0] = 1
pid_array_team_two[0] = 6


team_array_one = [1,2,3,4,numOfPlayers]
team_array_two = [6,7,8,9,10]

send for all proccees in team one the pid array team         ====>   pid of its own

fifo = [1,2,3,4,numOfPlayers] 

round finishes when the last proccess distance is zero
here it will send signal to all the proccess in the team to reset depends on round number ====> also sends for the parent here we have to think about this

if it is the last round then send a unquie signal to announce winner


*/

