/*
 * The PRODUCER
 */

#include "local.h"
Queue *mq;
Queue *fq;

main(int argc, char *argv[])
{
    int semid, shmid;
    pid_t ppid = getppid();
    OIM *oim;
    int chance = 0;
    int chosen;
    /*
     * Access, attach and reference the shared memory
     ! note: they just access the memory, they did not create any
     */
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

    
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    srand(getpid());
    sleep(2);
    int i = 3;
    while (i > 0)
    {
        chance = rand() % 100;
        if (chance < 50)
        {

            chosen = dequeue(mq);
        }
        else
        {

            chosen = dequeue(fq);
        }
        i--;
        printf("The chosen one is %d \n", chosen);
    }
    exit(0);
}