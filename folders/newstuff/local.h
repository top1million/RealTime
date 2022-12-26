#ifndef __LOCAL_H_
#define __LOCAL_H_

/*
 * Common header file: parent, producer and consumer
 */
#include <sys/resource.h>

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
#define BUFFER "./buffer"

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
int semid, semid1, semid2, semid3 ,semid4,semid5;
#define maxSize 1000
#define N_SLOTS 10
#define INT_MIN -2147483648
/* This declaration is *MISSING* is many solaris environments.
   It should be in the <sys/sem.h> file but often is not! If
   you receive a duplicate definition error message for semun
   then comment out the union declaration.
   */
typedef struct Person
{
    pid_t pid;
    int gender;
    int docType;
    int innerHallProb;
    int anticipationProb;
    int timeInsideDetector;
    int status;
} Person;

typedef struct Queue
{
    int front;
    int rear;
    int array[25];
} Queue;
typedef struct innerHall
{
    Queue tellerOneQueue;
    Queue tellerTwoQueue;
    Queue tellerThreeQueue;
    Queue tellerFourQueue;
    int Capacity;
    int seats[50];
} innerHall;

typedef struct OIM
{
    Queue male_queue;
    Queue female_queue;
} OIM;

typedef struct Turn
{
    int pid;
} Turn;

union semun
{
    int val;
    struct semid_ds *buf;
    ushort *array;
};

struct sembuf acquire = {0, -1, SEM_UNDO},
              release = {0, 1, SEM_UNDO};

enum
{
    AVAIL_SLOTS,
    TO_CONSUME
};

Person findme(pid_t pid, Person *peopleArray)
{
    for (int i = 0; i < number_of_people; i++)
    {
        if (peopleArray[i].pid == pid)
        {
            return peopleArray[i];
        }
    }
}

void createQueue(Queue *queue)
{
    queue->front = -1;
    queue->rear = -1;
}

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
        //printf("Enqueued item is %d queue len %d\n", item , queueLen(queue));
    }
}
/// @brief 
/// @param queue 
/// @return 
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

    //printf("Dequeued item is %d queue len\n", item,queueLen(queue));
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
int queueTop(Queue *queue)
{
    if (queue->front == -1)
        return INT_MIN;
    else
        return queue->array[queue->front];
}
int queueLen(Queue *queue)
{
    if (queue->front == -1)
        return 0;
    else
        return queue->rear - queue->front + 1;
}
#endif