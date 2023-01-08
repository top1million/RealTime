/*
 * The PRODUCER
 */

#include "local.h"
OIM *oim;
Queue *mq;
Queue *fq;
pid_t ppid;
void join_the_queue(int sig);
void pick_from_queue(int sig);
main(int argc, char *argv[])
{
    int shmid;
    ppid = getppid();
    /*
     * Access, attach and reference the shared memory
     note: they just access the memory, they did not create any
     */
    if (sigset(15, join_the_queue) == -1)
    {
        perror("Sigset can not set SIGUSR1");
        exit(SIGINT);
    }
    if (sigset(12, pick_from_queue) == -1)
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
        perror("shmget -- producer-- access");
        exit(2);
    }

    /*
     ! Access the semaphore set
     */
    if ((semid = semget((int)ppid, 2, 0)) == -1)
    {
        perror("problem in semget -->  producer");
        exit(3);
    }

    if (argc != 2)
    { /* check if the user entered the correct number of arguments */

        printf("Invalid arguments: %d\n", argc);
        exit(-1);
    }
    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    while (1)
        ;
    exit(1);
}
int k = 0;
void join_the_queue(int sig)
{

    if (k % 2 == 1)
    {
        mq = &oim->male_queue;

        acquire.sem_num = AVAIL_SLOTS; // blcoking the slot for the producer
        if (semop(semid, &acquire, 1) == -1)
        {
            perror("semop -- producer -- acquire");
            exit(4);
        }
        enqueue(mq, getpid());
        release.sem_num = TO_CONSUME; // releasing the slot for the consumer ( this will be released when the n customers full up the queue )

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
        enqueue(fq, getpid());
        show(fq, 1);
        k++;
    }
}

void pick_from_queue(int sig)
{

    if (k % 2 == 1)
    {
        mq = &oim->male_queue;
        int x = dequeue(mq);
        k++;
    }
    else
    {
        fq = &oim->female_queue;
        int x = dequeue(fq);
        k++;
    }
}
