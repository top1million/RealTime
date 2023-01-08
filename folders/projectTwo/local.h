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
#define N_SLOTS 25// ! number of poeple 
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


    if (queue->rear == 24)
        return;
    else
    {
        if (queue->front == -1)
            queue->front = 0;
        queue->rear++;
        queue->array[queue->rear] = item;
    }


}
int dequeue(Queue *queue)
{


    int item;
    if (queue->front == -1)
    {
        printf("Queue is empty\n");
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


    printf("Dequeued item is %d\n",item);
    return item;
}
void show(Queue *queue , int n)
{
    if (queue->front == -1)
        printf("Empty Queue \n");
    else
    { 
        if(n==0)
        printf("male Queue is : ");
        else
        printf("female queue is : ");
        for (int i = queue->front+1; i <= queue->rear; i++)
            printf("%d ", queue->array[i]);
        printf("\n");
    }
}
#endif 