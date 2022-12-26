#include "local.h"

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
    if (sigset(3, signal_catcher) == -1)
    {
        perror("Sigset can not set SIGUSR1");
        exit(SIGINT);
    }
    if (sigset(4, signal_catcher_1) == -1)
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
    if (strcmp("male", argv[0]) == 0)
    {
        genderFlag = 1; /* set the team flag to 1 if the player is from team one */
    }
    else
    {
        genderFlag = 2; /* set the team flag to 2 if the player is from team two */
    }
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    // int drawer_pid = toint(argv[0]); /* get the pid of the drawer process */
    // g_drawer_pid = drawer_pid;
    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */
    srand(getpid());                  /* seed the random number generator with the child's pid */
    // int sleep_time = rand() % 15 + 1; /* generate a random number between 1 and 10 */
    // if (sleep_time > 12)
    // {
    //     printf("\nPlayer %d is sleeping for %d seconds\n", getpid(), sleep_time);
    //     kill(getppid(), 20); /* send signal 20 to parent to indicate that the child is ready */
    // }
    while (1)
    {
        pause();
    }

    return 0;
}

void signal_catcher(int sig)
{
    
}
void signal_catcher_1(int sig)
{
    
}
void pick_top(Queue *queue, int semid)
{
    acquire.sem_num = TO_CONSUME;
    if (semop(semid, &acquire, 1) == -1)
    {
        perror("semop -- acquire -- child");
        exit(4);
    }
    int pid = dequeue(queue);
    sleep(4);
    release.sem_num = AVAIL_SLOTS;
    if (semop(semid, &release, 1) == -1)
    {
        perror("semop -- release -- child");
        exit(4);
    }
}

void writeFunc(int num, int genderFlag)
{
    // char str[50];
    // if (genderFlag == 1)
    //     sprintf(str, "Customer with PID %d Has joined The male queue.\n", num);
    // else
    //     sprintf(str, "Customer with PID %d Has joined The female queue.\n", num);
    // write(1, str, strlen(str));
}