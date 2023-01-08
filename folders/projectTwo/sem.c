#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <stdio.h>
#include <unistd.h>

int main()
{
    key_t key;
    int semid;

    union semun {
        int val;
        struct semid_ds *buf;
        unsigned short *array;
    } arg;

    unsigned short values[3] = {0, 1, 2};

    /* Generate a unique key for the semaphore set */

    key = ftok("/tmp", 'A');
    if (key == -1)
    {
        perror("ftok");
        return 1;
    }

    /* Create a new semaphore set or get the identifier of an existing set */
    semid = semget(key, 3, IPC_CREAT | IPC_EXCL | 0666);
    if (semid == -1)
    {
        perror("semget");
        return 1;
    }

    /* Initialize the semaphore set */
    arg.array = values;
    if (semctl(semid, 0, SETALL, arg) == -1)
    {
        perror("semctl");
        return 1;
    }

    /* Use the semaphore set as needed */
    struct sembuf sops[3];
    sops[0].sem_num = 0;
    sops[0].sem_op = -1;
    printf("sem 0 \n");
    sops[0].sem_flg = 0;
    sops[1].sem_num = 1;
    sops[1].sem_op = -1;
    printf("sem 1 \n");
    sops[1].sem_flg = 0;
    sops[2].sem_num = 2;
    sops[2].sem_op = -1;
    printf("sem 2 \n");
    sops[2].sem_flg = 0;
    if (semop(semid, sops, 3) == -1)
    {
        perror("semop");
        return 1;
    }
    /* Access shared resource */
    sops[0].sem_op = 1;
    sops[1].sem_op = 1;
    sops[2].sem_op = 1;
    if (semop(semid, sops, 3) == -1)
    {
        perror("semop");
        return 1;
    }

    /* Remove the semaphore set when it is no longer needed */
    if (semctl(semid, 0, IPC_RMID) == -1)
    {
        perror("semctl");
        return 1;
    }

    return 0;
}
