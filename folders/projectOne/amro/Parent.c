/*
 * The fork() function
 this file shows how to just let the parent create children 
 ! to avoid exec failure : No such file or directory, compile the child file with the parent file
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>   
#include <string.h>  
#include <ctype.h>

#define  numOfPlayers  10           /* defult value of the number of players */
#define  NUM_OF_TEAMS  2              /* defult value of the number of teams */

int points [NUM_OF_TEAMS];            /* array of the points of the teams */
int ready_counter = 0;                /* counter of the ready players */
int teamOnePlayer = 0;                /* counter of the players of team 1 */
int teamTwoPlayer = 1;                /* counter of the players of team 2 */
id_t pid, players[numOfPlayers] ;     /* array of the players pids */
int teamOneRounds = 0;                /* counter of the rounds of team 1 */
int teamTwoRounds = 0;                /* counter of the rounds of team 2 */
int rounds = 5;                       /* counter of the rounds */
int winning_flag = 0 ;                /* flag of the winning team */
int flag = 1;
int g_draw_pid = 0;                     /* pid of the drawer process */
void terminate_all();                 /* function to terminate all the players */
void players_ready();                 /* function to handle the ready signal */
void response_received(int);          /* function to handle the response signal from team 1 */
void response_received2(int);         /* function to handle the response signal from team 2 */
void signal_catcher_ready_state(int); /* function to handle the ready signal */
void new_round();                     /* function to handle the new round signal */
void announce_winner();               /* function to announce the winner */

int main()
{
  int i;
  char s[80];
  int drawer_pid = fork();                            /* create a child process */           /* convert the pid to string */
  char str[10];
  tostring(str, drawer_pid);
  printf("%s",str);
  if (drawer_pid == -1) {                             /* case 0: failure to create child */
    printf("fork failure ... getting out\n");
    exit (-1);
  }
  if ( drawer_pid == 0 ) {                            /* case 1: childe process */
    execlp("./point", "point", (char *) NULL);     /* execute the child file with the argument drawer */
    perror("exec failure ");                         /* this when there is an exec failure : No such file or directory */
    while(1); 
  }
  g_draw_pid = drawer_pid;
  /* ask the user for the number of rounds */
  printf("Press Enter to continue with the defult value for rounds / Enter any positive intger to set number of rounds: ");
  fgets(s, sizeof s, stdin);

  if(s[0] == '\n') 
  {
    printf("line is empty, the defult value ( %d ) for rounds will be used\n", rounds);
  }
  else
  {
    if (atoi(s) == 0 ) 
    {
      printf("line is unvalid, the defult value ( %d ) for rounds will be used\n", rounds);
    }
    else
    { 
      rounds = atoi(s);
      printf("the new value ( %d ) for rounds will be used\n", rounds);  
    }
  }

/* ****************************************************************************************************************************/

  printf("My process ID is %d\n", getpid());
  printf("Children IDs:\n");

  if (sigset(10,signal_catcher_ready_state)==-1){
    perror("Sigset can not set SIGUSR1");
    exit(SIGINT);
  }
  if (sigset(12, response_received) == -1) {           /* set the signal catcher for the response signal from team 1 */
    perror("Sigset can not set SIGUSR2");
    exit(SIGINT);
  }
    if (sigset(13, response_received2) == -1) {        /* set the signal catcher for the response signal from team 2 */
    perror("Sigset can not set SIGPIPE");
    exit(SIGINT);
  }

  for ( i = 0; i < numOfPlayers; i++ ) 
  {
    flag = 1 ;
    pid = fork();                                   /* create a child process */

    // case 0: failure to create child
    if (pid == -1) { 
      printf("fork failure ... getting out\n");
      exit (-1);
    }
    // case 1: childe process 
    if ( pid == 0 ) { 
      
      if(i%2 == 0 )
      execlp("./child", str,"team1", (char *) NULL);   /* execute the child file with the argument team1 */
      else
      execlp("./child", str,"team2", (char *) NULL);  /* execute the child file with the argument team2 */
      perror("exec failure ");                    /* this when there is an exec failure : No such file or directory */
      while(1); 
    }
    // case 2: parent process
    else
      players[i] = pid;                         // saves the id of my child
      printf("%d, ", players[i]); 
    while(flag == 1);
  }

  while(1){ 
  if (ready_counter == numOfPlayers ){         /* if all the players are ready */
    printf("\n>> All players are ready \n>> Sending starting signal to  players to start \n");
    for(int i = 0 ; i < 2 ; i ++){
      printf(">> Sending signal to player %d from team %d\n", players[i],i%2 + 1); 
      kill(players[i], 3);                   /* send the start signal to the players */
    }
    printf("\n");
    break;
  }
  }

  while(1);
  return(0);
}

void signal_catcher_ready_state(int signum){
  flag = 0;
  ready_counter++;
}
// * this function is called when the parent receives a signal from the child from team 1 that he finished his round
void response_received(int signum) 
{
  printf(">> The %d player in team one player has finished 50 meters \n", teamOnePlayer+1); // ! What is this teamOnePlayer-1
  teamOnePlayer+= 2;
  if(teamOnePlayer < numOfPlayers){
    printf(">> Sending signal to player %d from team one\n", players[teamOnePlayer]);
    kill(players[teamOnePlayer], 3);
  }
  else{
    teamOneRounds ++;
    rounds -= 1;
    announce_winner();
    kill(players[teamTwoPlayer], 15);
    printf("\nRESULT: ************* team one has finished the %d round **************\n\n",teamOneRounds);
    
    new_round();
  }
}

// * this function is called when the parent receives a signal from the child from team 2 that he finished his round
void response_received2(int signum) 
{
  
  printf(">> The %d player in team two player finsihed 50 meters\n",teamTwoPlayer ); // ! What is this teamTwoPlayer-1
  teamTwoPlayer+= 2;
  if(teamTwoPlayer < numOfPlayers){
    printf(">> Sending signal to player %d from team two\n", players[teamTwoPlayer]);
  kill(players[teamTwoPlayer], 3);
  }
  else{
    teamTwoRounds++;
    rounds -= 1 ;
    announce_winner();
    kill(players[teamOnePlayer], 15);
    printf("\nRESULT:************* team two has finished the %d round **************\n\n",teamTwoRounds);
    new_round();
  }
}

// * this function to start a new round
void new_round(){
  while (teamTwoRounds != teamTwoRounds){
    sleep(1);
  }
  printf("**************  <<< New Round  >>> **************\n");
  teamOnePlayer = 0;
  teamTwoPlayer = 1;
  kill(players[teamOnePlayer], 3);
  kill(players[teamTwoPlayer], 3);
}

//* this function to announce the winner of the game
void announce_winner(){
  if(rounds == 0){
    if(teamOneRounds > teamTwoRounds){
      printf("\n **************  <<< Game Resuls  >>> **************\n");
      printf("Team one score: %d \n", teamOneRounds);
      printf("Team two score: %d \n", teamTwoRounds);
      printf(">>> Reslut: Team 1 has won the game, with score of : ( %d ) \n", teamOneRounds);
      terminate_all(); /* end the game, kill all the children */
    }
    else if(teamOneRounds < teamTwoRounds){
      printf("\n **************  <<< Game Resuls  >>> **************\n");
      printf("Team one score: %d \n", teamOneRounds);
      printf("Team two score: %d \n", teamTwoRounds);
      printf(">>> Reslut: Team 2 has won the game, with score of : ( %d ) \n", teamTwoRounds);
      terminate_all(); /* end the game, kill all the children */
    }
    else{
      printf("\n **************  <<< Game Resuls  >>> **************\n");
      printf("Team one score: %d \n", teamOneRounds);
      printf("Team two score: %d \n", teamTwoRounds);
      printf(">>> Reslut: The game is a draw \n");
      terminate_all(); /* end the game, kill all the children */
    }
}
}

//* this function to terminate all the players
void terminate_all(){
  for(int i = 0 ; i < numOfPlayers ; i++){
    kill(players[i], 9);
  }
  kill(g_draw_pid,9);
  exit(10);
}

// function that converts integer to string




void tostring(char str[], int num)
{
    int i, rem, len = 0, n;
    n = num;
    while (n != 0)
    {
        len++;
        n /= 10;
    }
    for (i = 0; i < len; i++)
    {
        rem = num % 10;
        num = num / 10;
        str[len - (i + 1)] = rem + '0';
    }
    str[len] = '\0';
}




