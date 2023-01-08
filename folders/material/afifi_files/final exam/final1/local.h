#ifndef __LOCAL_H_
#define __LOCAL_H_

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/shm.h>
#include <wait.h>
#include <signal.h>
#include <pthread.h>  
#include <errno.h>
#include <sys/msg.h>

#define X_TILES 50
#define Y_TILES 50                

#define NUMBER_OF_CATS 75                
#define NUMBER_OF_WHITE_CATS 25                
#define NUMBER_OF_DARK_GREY_CATS 20                
#define NUMBER_OF_LIGHT_GREY_CATS 15                
#define NUMBER_OF_BROWN_CATS 10                
#define NUMBER_OF_BLACK_CATS 5                
#define NUMBER_OF_CAT_TYPES 5                

#define NUMBER_OF_PLAYERS 5           
#define INITIAL_SCORE 100

//colors
#define red "\033[0;31m"   /* 0 -> normal ;  31 -> red */
#define cyan "\033[1;36m"  /* 1 -> bold ;  36 -> cyan */
#define green "\033[4;32m" /* 4 -> underline ;  32 -> green */
#define blue "\033[9;34m"  /* 9 -> strike ;  34 -> blue */

#define black "\033[0;30m"
#define brown "\033[0;33m"
#define magenta "\033[0;35m"
#define gray "\033[1;37m"

#define none "\033[0m" /* to flush the previous property */

typedef struct player_t
{
    int player_id;
    int current_location[2];
    int score;
    //to see how many of each cat in order he has to catch.
    int remaining_cats[NUMBER_OF_CAT_TYPES];
    int current_cat;
} player_t;

typedef struct playground_t
{
  //to see how many players are in the same spot
  int current_number_of_players_here;
  int players_ids[NUMBER_OF_PLAYERS];
  int cat_id;
} playground_t;

union semun
{
  int val;
  struct semid_ds *buf;
  ushort *array;
};
typedef struct mesg_buffer
{
  long mesg_type;
  //x,y coordinates then score
  int mesg_text[3];
} message;

extern player_t players[NUMBER_OF_PLAYERS];
extern int qid;

enum
{
 WHITE,
 DARK_GREY,
 LIGHT_GREY,
 BROQN,
 BLACK
};

struct sembuf acquire = {0, -1, SEM_UNDO},
              release = {0, 1, SEM_UNDO},
              acquire_all = {0, -1 * NUMBER_OF_PLAYERS, SEM_UNDO},
              release_all = {0, NUMBER_OF_PLAYERS, SEM_UNDO};
              
// set the values for each of the players 
void set_values();
void* watch_time(void*);
//the shoot
void* player_function(void*);

#endif