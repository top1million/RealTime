/*
 * The PRODUCER
 */

#include "local.h"
OIM *oim;
Queue *mq;
Queue *fq;
main(int argc, char *argv[])
{
    int shmid;
    pid_t ppid = getppid();
    /*
     * Access, attach and reference the shared memory
     note: they just access the memory, they did not create any
     */
    
    // if (sigset(15, join_the_queue) == -1)
    // {
    //     perror("Sigset can not set SIGUSR1");
    //     exit(SIGINT);
    // }
    
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

    while (1)
        ;    /* keep the process running */
    exit(0); // they are done
}
