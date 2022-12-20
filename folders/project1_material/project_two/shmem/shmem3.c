#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdlib.h>
#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
int INT_MIN = -2147483648;
typedef struct Queue
{
    int front;
    int rear;
    int array[25];
} Queue;


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
    return item;
}
void show(Queue *queue)
{
    if (queue->front == -1)
        printf("Empty Queue \n");
    else
    {
        printf("Queue: \n");
        for (int i = queue->front; i <= queue->rear; i++)
            printf("%d ", queue->array[i]);
        printf("\n");
    }
}

int main()
{
    static struct Queue que;
    pid_t pid;
    int shmid;
    char c, *shm, *s;
    Queue *queue;
    char *shmptr;
    pid = getpid();
    if ((shmid = shmget((int)pid, sizeof(queue) * 2, IPC_CREAT | 0666)) != -1)
    { // size of the shared memory is the size of the struct which

        if ((queue = shmat(shmid, 0, 0)) == (char *)-1)
        {
            perror("problem with shmat");
            exit(1);
        }
    }

    else
    {
        perror("problem with shmget");
        exit(2);
    }
    printf("%d %d\n", shmid, getpid());
    enqueue(queue, 10);
    enqueue(queue, 20);
    enqueue(queue, 30);
    show(queue);
    sleep(5);
    shmdt(queue);
    shmctl(shmid, IPC_RMID, (struct shmid_ds *)0); /* remove */
}
