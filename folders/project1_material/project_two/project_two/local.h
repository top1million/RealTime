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
#include <semaphore.h>
#define SLOT_LEN  50
#define N_SLOTS   6
# define SIZE 4
#define MAX_SIZE 10

// structure for a queue
typedef struct {
  int data[MAX_SIZE];
  int front;
  int rear;
} queue;
sem_t semEmpty;
sem_t semFull;
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

struct MEMORY {
  char buffer[N_SLOTS][SLOT_LEN];
  int  head, tail;
};

struct sembuf acquire = {0, -1, SEM_UNDO}, 
              release = {0,  1, SEM_UNDO};

enum {AVAIL_SLOTS, TO_CONSUME};



// function to create a queue
queue* create_queue() {
  queue* q = (queue*)malloc(sizeof(queue));
  q->front = -1;
  q->rear = -1;
  return q;
}

// function to check if the queue is empty
int is_empty(queue* q) {
  return q->front == -1;
}

// function to check if the queue is full
int is_full(queue* q) {
  return (q->rear + 1) % MAX_SIZE == q->front;
}

// function to add an element to the queue
void enqueue(queue* q, int value) {
  if (is_full(q)) {
    printf("Queue is full\n");
    return;
  }
  q->rear = (q->rear + 1) % MAX_SIZE;
  q->data[q->rear] = value;
  if (q->front == -1) {
    q->front = q->rear;
  }
}

// function to remove an element from the queue
int dequeue(queue* q) {
  if (is_empty(q)) {
    printf("Queue is empty\n");
    return -1;
  }
  int value = q->data[q->front];
  if (q->front == q->rear) {
    q->front = -1;
    q->rear = -1;
  } else {
    q->front = (q->front + 1) % MAX_SIZE;
  }
  return value;
}


#endif

