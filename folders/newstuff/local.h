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
int semid;
#define maxSize 1000
#define N_SLOTS 30
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
    if (semop(semid, &acquire, 1) == -1)
    {
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
        printf("Enqueued item is %d\n", item);
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

    printf("Dequeued item is %d\n", item);
    return item;
}
void show(Queue *queue, int n)
{
    if (queue->front == -1)
        printf("Empty Queue \n");
    else
    {
        if (n == 0)
            printf("male Queue is : ");
        else
            printf("female queue is : ");
        for (int i = queue->front; i <= queue->rear; i++)
            printf("%d ", queue->array[i]);
        printf("\n");
    }
}
int queueLen(Queue *queue)
{
    if (queue->front == -1)
        return 0;
    else
        return queue->rear - queue->front + 1;
}
int queueTop(Queue *queue)
{
    if (queue->front == -1)
        return INT_MIN;
    else
        return queue->array[queue->front];
}
#endif