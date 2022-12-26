#include "local.h"

OIM *oim;
Queue *mq;
Queue *fq;
pid_t ppid;
Turn *turns;
Person *people;
int gunit, semid;
int *array;
void pick(int);

int main(int argc, char *argv[])
{
    ppid = getppid();
    int shmid, shmid1, shmid2;
    srand(getpid());
    if (argc != 2)
    { /* check if the user entered the correct number of arguments */
        printf("Invalid arguments: %d\n", argc);
        exit(-1);
    }

    if (sigset(3, pick) == -1)
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
    if ((shmid1 = shmget((int)ppid + 1, 0, 0)) != -1)
    { // they are connected to the memory using the ppide ( they depend on the parent process id)
        if ((people = (Person *)shmat(shmid1, 0, 0)) == (char *)-1)
        {
            perror("problem with shmat");
            exit(1);
        }
    }
    else
    {
        perror("problem with shmget");
        exit(2);
    }
    if ((shmid2 = shmget((int)ppid + 2, 0, 0)) != -1)
    { // size of the shared memory is the size of the struct which

        if ((turns = (Turn *)shmat(shmid2, 0, 0)) == (char *)-1)
        {
            perror("problem with shmat");
            exit(1);
        }
    }
    else
    {
        perror("problem with shmget");
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
    if ((semid1 = semget((int)ppid + 1, 2, 0)) == -1)
    {
        perror("semget -- producer -- access");
        exit(3);
    }
    int number_of_people = toint(argv[1]);
    gunit = number_of_people;
    srand(getpid());     /* seed the random number generator with the child's pid */
    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */
    while (1)
    {
        pause();
    }

    return 0;
}

void pick(int num)
{
    int flag = genderFlag;
    for (int i = 0; i < gunit; i++)
    { 
        if (flag == 0)
        {

            pick_top(mq, semid);
        }
        else
        {

            pick_top(fq, semid1);
        }
    }
}

void printsem()
{
    int sem_value;
    for (int i = 0; i < 2; i++)
    { /* display contents */
        char str[100];
        if ((sem_value = semctl(semid, i, GETVAL, 0)) == -1)
        {
            perror("semctl: GETVAL");
            exit(4);
        }

        sprintf(str, "Semaphore %d has value of %d\n", i, sem_value);
        write(1, str, strlen(str));
    }
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
    int g = searchinArrayStruct(pid);
    sleep(g);
    release.sem_num = AVAIL_SLOTS;
    if (semop(semid, &release, 1) == -1)
    {
        perror("semop -- release -- child");
        exit(4);
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

writeFunc(int x, int i)
{
    char str[20];
    sprintf(str, "*** %d   %d  ***\n", i, x);
    write(1, str, strlen(str));
}

int searchinArrayStruct(int x)
{
    for (int i = 0; i < gunit; i++)
    {
        if ((int)people[i].pid == x)
        {
            return people[i].timeInsideDetector;
        }
    }
    return 0;
    write(1, "Parent is waiting for children to finish", 40);

    printf("test");
}