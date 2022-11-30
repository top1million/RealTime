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
void collect_responses();
void calculate_points();
void announce_new_round();
void end_game();
void signal_catcher_ready_state(int);
int ready_counter = 0; 

int main()
{
  int i;
  id_t pid, players[numOfPlayers] ;
  
  printf("My process ID is %d\n", getpid());

  for ( i = 0; i < numOfPlayers; i++ ) 
  {
    pid = fork();

    // case 0: failure to create child
    if (pid == -1) { 
      printf("fork failure ... getting out\n");
      exit (-1);
    }
    // case 1: childe process 
    if ( pid == 0 ) { 
      printf("\nI am the child  => PID = %d\n", getpid());
      if(i%2 == 0 )
      execlp("./child", "shit", (char *) NULL); // cat: concatinate 
      else
      execlp("./child", "shitno", (char *) NULL); // cat: concatinate
      perror("exec failure "); // this when there is an exec failure : No such file or directory
      while(1); 
    }
    // case 2: parent process
    else
      printf("I am the parent => PID = %d\n", getpid());
      players[i] = pid; //! saves the id of my child
  }


  for(int i = 0 ; i <numOfPlayers ; i ++){
    printf("team one %d \n", players[i]);

  }
  if ( sigset(SIGINT, signal_catcher_ready_state) == -1 ) {
  perror("Sigset can not set SIGINT");
  exit(SIGINT);
  }
  if (ready_counter == numOfPlayers ){
    printf("All players are ready \n Sending signal to all players to start \n");
    for(int i = 0 ; i <numOfPlayers ; i ++){
      printf("sending signal to player %d\n", players[i]);
      kill(players[i], 3);
    }
    
  }
  pause();
  printf("Game over \n");


  // while(1); 
  /*{
    //  if received response start the game
  }*/

  return(0);
}

void signal_catcher_ready_state(int sig_num)
{
  printf("Received signal from %d\n", getpid());
  ready_counter ++;
  printf("*************%d\n",ready_counter);
}

void terminate_all(int signum) 
{
 
}

void response_received(int signum) 
{
 
}

void players_ready() 
{
  
}

void collect_responses()
{

}

void calculate_points() 
{

}

void announce_new_round() 
{

}

// end the game if the last player from any team reach the first station
void end_game() 
{

}

void terminate()
{

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

