#include "local.h"

innerHall *innerHallSHM;
OIM *oim;
Queue *mq;
Queue *fq;
pid_t ppid;
Turn *turns;
Queue *iq1, *iq2, *iq3, *iq4;
Person *people;
int gunit;
int *array;
int k = 0;
int teller_id;
void ctrl(int);
void picktop(int);

int main(int argc, char *argv[])
{
    ppid = getppid();
    int shmid, shmid1, shmid2, shmid3;
    srand(getpid());
    if (sigset(3, ctrl) == SIG_ERR)
    {
        perror("sigset");
        exit(1);
    }
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
    if ((shmid3 = shmget((int)ppid + 3, 0, 0)) != -1)
    { // size of the shared memory is the size of the struct which

        if ((innerHallSHM = (innerHall *)shmat(shmid3, 0, 0)) == (char *)-1)
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
    if ((semid2 = semget((int)ppid + 2, 2, 0)) == -1)
    {
        perror("semget -- producer -- access");
        exit(3);
    }
    if ((semid3 = semget((int)ppid + 3, 2, 0)) == -1)
    {
        perror("semget -- producer -- access");
        exit(3);
    }
    if ((semid4 = semget((int)ppid + 4, 2, 0)) == -1)
    {
        perror("semget -- producer -- access");
        exit(3);
    }
    if ((semid5 = semget((int)ppid + 5, 2, 0)) == -1)
    {
        perror("semget -- producer -- access");
        exit(3);
    }
    int number_of_people = toint(argv[1]);

    if (strcmp("teller_id1", argv[0]) == 0)
    {
        teller_id = 1;
    }
    else if (strcmp("teller_id2", argv[0]) == 0)
    {
        teller_id = 2;
    }
    else if (strcmp("teller_id3", argv[0]) == 0)
    {
        teller_id = 3;
    }
    else if (strcmp("teller_id4", argv[0]) == 0)
    {
        teller_id = 4;
    }
    else
    {
        printf("Invalid teller id");
        exit(1);
    }
    gunit = number_of_people;
    iq1 = &innerHallSHM->tellerOneQueue;
    iq2 = &innerHallSHM->tellerTwoQueue;
    iq3 = &innerHallSHM->tellerThreeQueue;
    iq4 = &innerHallSHM->tellerFourQueue;
    srand(getpid());     /* seed the random number generator with the child's pid */
    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */

    while (1)
    {
        pause();
    }

    return 0;
}
void ctrl(int sig)
{
    int sleep_limit = rand() % 4;
    int j = 20 - sleep_limit;
    int i = 0;
    while (k < gunit)
    {

        switch (teller_id)
        {
        case 1:

            pickTop(iq1, semid2);
            break;
        case 2:

            pickTop(iq2, semid3);
            break;
        case 3:

            pickTop(iq3, semid4);
            break;
        case 4:

            pickTop(iq4, semid5);
            break;
        }
        sleep(sleep(rand() % sleep_limit + 1));
        i++;
    }
}
void pickTop(Queue *q, int semid)
{
    acquire.sem_num = TO_CONSUME;
    if (semop(semid, &acquire, 1) == -1)
    {
        perror("semop -- acquire -- child");
        exit(4);
    }
    int pid = dequeue(q);
    int g = searchinArrayStruct(pid);
    write(1, "Customer entered the bank", 25);
    sleep(people[g].innerHallProb);
    if (people[g].anticipationProb < people[g].innerHallProb)
    {
        kill(ppid, 22);
        k--;
        write(1, "Customer left the bank happy", 22);
    }
    else
    {
        kill(ppid, 21);
        k--;
        write(1, "Customer left the bank unsatisfied", 22);
    }

    release.sem_num = AVAIL_SLOTS;
    if (semop(semid, &release, 1) == -1)
    {
        perror("semop -- release -- child");
        exit(4);
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
    char str[40];
    sprintf(str, "**************** %d  ************\n", x);
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

void enqueueP(int pid, Queue *queue, int semid)
{
    acquire.sem_num = AVAIL_SLOTS;

    if (semop(semid, &acquire, 1) == -1)
    {
        perror("semop -- producer -- acquire");
        exit(4);
    }

    enqueue(queue, pid);

    release.sem_num = TO_CONSUME;

    if (semop(semid, &release, 1) == -1)
    {
        perror("semop -- producer -- release");
        exit(5);
    }
}
