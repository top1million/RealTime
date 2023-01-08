/*
 * The CONSUMER
 */
#include "local.h"
OIM *oim;
Queue *mq;
Queue *fq;
int genderFlag;
void join_the_queue(int sig);
int shit = 0;
main(int argc, char *argv[])
{
    int shmid;
    pid_t ppid = getppid();
    /*
     * Access, attach and reference the shared memory
     note: they just access the memory, they did not create any
     */
    if (sigset(15, join_the_queue) == -1)
    {
        perror("Sigset can not set SIGUSR1");
        exit(SIGINT);
    }

    if ((shmid = shmget((int)ppid, 0, 0)) != -1)
    { // they are connected to the memory using the ppide ( they depend on the parent process id)
        if ((oim = shmat(shmid, 0, 0)) == (char *)-1)
        {
            perror("problem with shmat");
            exit(1);
        }
    }
    else
    {
        perror("shmget -- comsumer-- access");
        exit(2);
    }

    /*
     ! Access the semaphore set
     */
    if ((semid = semget((int)ppid, 2, 0)) == -1)
    {
        perror("problem in semget -->  consumer");
        exit(3);
    }

    if (argc != 2)
    { /* check if the user entered the correct number of arguments */

        printf("Invalid arguments: %d\n", argc);
        exit(-1);
    }

    if (strcmp("male", argv[1]) == 0)
    {
        genderFlag = 1; /* set the team flag to 1 if the player is from team one */
    }

    else
    {
        genderFlag = 2; /* set the team flag to 2 if the player is from team two */
    }

    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */
    while (1)
        ;    /* keep the process running */
    exit(0); // they are done
}
int k = 0;
void join_the_queue(int sig)
{

    if (k % 2 == 0)
    {
        mq = &oim->male_queue;
        acquire.sem_num = TO_CONSUME; // blcoking the slot for the producer

        if (semop(semid, &acquire, 1) == -1)
        {
            perror("semop -- producer -- acquire");
            exit(4);
        }
        enqueue(mq, getpid());
        release.sem_num = AVAIL_SLOTS; // releasing the slot for the consumer ( this will be released when the n customers full up the queue )

        if (semop(semid, &release, 1) == -1)
        {
            perror("semop -- producer -- release");
            exit(5);
        }
        show(mq, 0);
        k++;
    }
    else
    {
        fq = &oim->female_queue;
        acquire.sem_num = TO_CONSUME; // blcoking the slot for the producer

        if (semop(semid, &acquire, 1) == -1)
        {
            perror("semop -- producer -- acquire");
            exit(4);
        }
        enqueue(fq, getpid());
        release.sem_num = AVAIL_SLOTS;
        if (semop(semid, &release, 1) == -1)
        {
            perror("semop -- producer -- release");
            exit(5);
        }
        show(fq, 1);
        k++;
    }
}

int toint(char str[])
{
    int len = strlen(str);
    int i, num = 0;
    for (i = 0; i < len; i++)
    {
        num = num + ((str[len - (i + 1)] - '0') * pow(10, i));
    }

    return num;
}
