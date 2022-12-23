#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#define QUEUE_SIZE 10

typedef struct queue
{
    int data[QUEUE_SIZE];
    int head;
    int tail;
    int semid;
} queue_t;

void queue_init(queue_t *q)
{
    q->head = 0;
    q->tail = 0;
    key_t key = ftok("/tmp", 'A');
    if (key == -1)
    {
        perror("ftok");
        exit(1);
    }
    q->semid = semget(key, 2, IPC_CREAT | IPC_EXCL | 0666);
    if (q->semid == -1)
    {
        perror("semget");
        exit(1);
    }
    union semun {
        int val;
        struct semid_ds *buf;
        unsigned short *array;
    } arg;
    arg.array = (unsigned short[]){0, QUEUE_SIZE};
    if (semctl(q->semid, 0, SETALL, arg) == -1)
    {
        perror("semctl");
        exit(1);
    }
}

void queue_enqueue(queue_t *q, int value)
{
    struct sembuf sops;
    sops.sem_num = 1;
    sops.sem_op = -1;
    sops.sem_flg = 0;
    if (semop(q->semid, &sops, 1) == -1)
    {
        perror("semop");
        exit(1);
    }
    q->data[q->tail] = value;
    q->tail = (q->tail + 1) % QUEUE_SIZE;
    sops.sem_op = 1;
    if (semop(q->semid, &sops, 1) == -1)
    {
        perror("semop");
        exit(1);
    }
    sops.sem_num = 0;
    if (semop(q->semid, &sops, 1) == -1)
    {
        perror("semop");
        exit(1);
    }
}

int queue_dequeue(queue_t *q)
{
    int value;
    struct sembuf sops;
    sops.sem_num = 0;
    sops.sem_op = -1;
    sops.sem_flg = 0;
    if (semop(q->semid, &sops, 1) == -1)
    {
        perror("semop");
        exit(1);
    }
    value = q->data[q->head];
    q->head = (q->head + 1) % QUEUE_SIZE;
    sops.sem_op = 1;
    if (semop(q->semid, &sops, 1) == -1)
    {
        perror("semop");
        exit(1);
    }
    sops.sem_num = 1;
    if (semop(q->semid, &sops, 1) == -1)
    {
        perror("semop");
        exit(1);
    }
    return value;
}


int main()
{
    queue_t q;
    queue_init(&q);

    queue_enqueue(&q, 42);
    queue_enqueue(&q, 17);
    queue_enqueue(&q, 4);
    queue_enqueue(&q, 7);
    queue_enqueue(&q, 2);
    queue_enqueue(&q, 1);

    int value1 = queue_dequeue(&q);
    int value2 = queue_dequeue(&q);

    printf("%d %d\n", value1, value2);

    return 0;
}
