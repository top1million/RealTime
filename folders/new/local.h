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

/*
    Person Struct
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
/*
    Queue Struct
*/
typedef struct Queue
{
    int front;
    int rear;
    int array[25];
} Queue;
/*
    Inner Hall Struct
*/
typedef struct innerHall
{
    Queue queue;
    int seats[50];
    int tellers[4];
} innerHall;
/*
    OIM Struct
*/
typedef struct OIM
{
    Queue male_queue;
    Queue female_queue;
} OIM;
/*
    Turn Struct
*/
typedef struct Turn
{
    int pid;
} Turn;
/*
    Semaphore  Struct
*/
union semun
{
    int val;
    struct semid_ds *buf;
    ushort *array;
};

int number_of_people;
int number_of_females;
int number_of_males;
int number_of_unserved_people;
int queue_threshold;
int time_inside_the_detector_m;
int time_inside_the_detector_f;
int number_of_tellers;
int number_of_unhappy_people;
int number_of_satisfied_people;
int gate_openning_time;
int semid, semid1, semid2;
int genderFlag = 0;
pid_t ppid;
Person *people;
OIM *oim;
Queue *mq, *fq;

#define maxSize 1000
#define N_SLOTS 10
#define INT_MIN -2147483648


struct sembuf acquire = {0, -1, SEM_UNDO},
              release = {0, 1, SEM_UNDO};

enum
{
    AVAIL_SLOTS,
    TO_CONSUME
};

/*
    function to find a person in the people array
*/
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
/*
   intialize the queue
*/
void createQueue(Queue *queue)
{
    queue->front = -1;
    queue->rear = -1;
}
/*
    enqueue a person in the queue
*/
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
        printf("Enqueued item is %d\n", item);
    }
}
/*
    dequeue a person from the queue
*/
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
/*
    print the queue content
*/
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
/*
    return the length of the queue
*/
int queueLen(Queue *queue)
{
    if (queue->front == -1)
        return 0;
    else
        return queue->rear - queue->front + 1;
}
/*
    return the top of the queue
*/
int queueTop(Queue *queue)
{
    if (queue->front == -1)
        return INT_MIN;
    else
        return queue->array[queue->front];
}
#endif