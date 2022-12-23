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
#include <math.h>

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
int semid; 

#define N_SLOTS 5 // ! number of poeple 
#define INT_MIN  -2147483648
/* This declaration is *MISSING* is many solaris environments.
   It should be in the <sys/sem.h> file but often is not! If
   you receive a duplicate definition error message for semun
   then comment out the union declaration.
   */

union semun
{
  int val;
  struct semid_ds *buf;
  ushort *array;
};

typedef struct Queue
{
  int front;
  int rear;
  int array[25];
} Queue;

typedef struct OIM
{
  int seets[50];
  int t_b;
  int t_r;
  int t_i;
  int t_t;
  Queue male_queue;
  Queue female_queue;
} OIM;

struct sembuf acquire = {0, -1, SEM_UNDO},
              release = {0, 1, SEM_UNDO};

enum
{
  AVAIL_SLOTS,
  TO_CONSUME
};

void enqueue(Queue *queue, int item)
{
    acquire.sem_num = AVAIL_SLOTS; // blcoking the slot for the producer
    
    if ( semop(semid, &acquire, 1) == -1 ) {
      perror("semop -- producer -- acquire");
      exit(4);
    }

    if (queue->rear == 24)
        return;
    else
    {
        if (queue->front == -1)
            queue->front = 0;
        queue->rear++;
        queue->array[queue->rear] = item;
    }

    release.sem_num = TO_CONSUME; // releasing the slot for the consumer ( this will be released when the n customers full up the queue ) 
    
    if ( semop(semid, &release, 1) == -1 ) {
      perror("semop -- producer -- release");
      exit(5);
    }
}
int dequeue(Queue *queue)
{
    acquire.sem_num = TO_CONSUME;
    
    if ( semop(semid, &acquire, 1) == -1 ) {
      perror("semop -- consumer -- acquire");
      exit(4);
    }

    int item;
    if (queue->front == -1)
    {
        return INT_MIN;
    }
    else
    {
        item = queue->array[queue->front];
        queue->front++;
        if (queue->front > queue->rear)
        {
            queue->front = queue->rear = -1;
        }
    }

    release.sem_num = AVAIL_SLOTS; // release the slot for the producer
    
    if ( semop(semid, &release, 1) == -1 ) {
      perror("semop -- consumer -- release");
      exit(5);
    }

    return item;
}
void show(Queue *queue)
{
    if (queue->front == -1)
        printf("Empty Queue \n");
    else
    {
        for (int i = queue->front; i <= queue->rear; i++)
            printf("%d ", queue->array[i]);
        printf("\n");
    }
}
#endif 