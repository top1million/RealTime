/*
 * The CONSUMER
 */

#include "local.h"
main(int argc, char *argv[])
{
    int semid, shmid;
    pid_t ppid = getppid();
    char *shmptr;
    struct Queue *queptr;

    /*
     * Access, attach and reference the shared memory
     note: they just access the memory, they did not create any
     */
    if ((shmid = shmget((int)ppid, 0, 0)) != -1)
    { // they are connected to the memory using the ppide ( they depend on the parent process id)
        if ((shmptr = (char *)shmat(shmid, (char *)0, 0)) == (char *)-1)
        {
            perror("shmat -- consumer -- attach");
            exit(1);
        }
        queptr = (struct Queue *)shmptr; // formating the memory
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
    exit(0); // they are done
}