#include "local.h"
OIM *oim;
pid_t ppid;

void signal_catcher(int);
void signal_catcher_1(int);
int main(int argc, char *argv[])
{
    ppid = getppid();
    int shmid;
    if (argc != 2)
    { /* check if the user entered the correct number of arguments */
        printf("Invalid arguments: %d\n", argc);
        exit(-1);
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
        perror("shmget -- child-- access");
        exit(2);
    }
    /*
     * Access the semaphore set
     */
    if ((semid = semget((int)ppid, 2, 0)) == -1)
    {
        perror("semget -- producer -- access");
        exit(3);
    }
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */
    srand(getpid());                  /* seed the random number generator with the child's pid */

    while (1)
    {
        pause();
    }

    return 0;
}

