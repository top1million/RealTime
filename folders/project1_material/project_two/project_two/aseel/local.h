#ifndef __LOCAL_H_
#define __LOCAL_H_

/*
 * Common header file: parent, producer and consumer
 */

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

int number_of_people;
int number_of_females; 
int number_of_males; 
int number_of_unserved_people; 
int queue_threshold;
int time_inside_the_detector_m;
int time_inside_the_detector_f;
int number_of_tellers_B;
int number_of_tellers_I;
int number_of_tellers_R;
int number_of_tellers_T;
int number_of_unhappy_people;
int number_of_satisfied_people;
int gate_openning_time; 


#define N_SLOTS   2 // ! 1 slot for the queue ( not sure if it is correct )

/* This declaration is *MISSING* is many solaris environments.
   It should be in the <sys/sem.h> file but often is not! If 
   you receive a duplicate definition error message for semun
   then comment out the union declaration.
   */

union semun {
  int              val;
  struct semid_ds *buf;
  ushort          *array; 
};
typedef struct OIM{
  int seets[50];
  int t_b; 
  int t_r;
  int t_i;
  int t_t;
  Queue queue[2]; 
} OIM;

typedef struct Queue{
    int front;
    int rear;
    int array[25];
} Queue;

struct sembuf acquire = {0, -1, SEM_UNDO}, 
              release = {0,  1, SEM_UNDO};

enum {AVAIL_SLOTS, TO_CONSUME};

#endif