#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <string.h>
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
        return -1;
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
    // Generate the key for the shared memory segment
    key_t key = 15;
    Queue *shmp;
    // Get the ID of the shared memory segment
    int shmid = 7;

    // Attach the shared memory segment to the process's address space
    shmp = shmat(shmid, NULL, 0);
    if (shmp == (void *)-1)
    {
        perror("Shared memory attach");
        return 1;
    }
    // Copy the data from the shared memory segment into a local buffer
    show(shmp);

    // Print the contents of the buffer
    return 0;
}
