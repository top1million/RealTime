/*
 * The PRODUCER
 */

#include "local.h"

main(int argc, char *argv[])
{
    int semid, shmid;
    pid_t ppid = getppid();
    char *shmptr;
    static struct OIM oim;

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
        perror("shmget -- producer -- access");
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
    exit(0); // they are done
}