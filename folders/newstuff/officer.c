#include "local.h"

OIM *oim;
Queue *mq;
Queue *fq;
pid_t ppid;
int counter = 0;
int genderFlag = 0;
int gunit;
int *array;
void signal_catcher(int);
void start(int);
int main(int argc, char *argv[])
{
    ppid = getppid();
    int shmid;
    srand(getpid());
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
    if (sigset(4, start) == -1)
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
        genderFlag = 0; /* set the team flag to 1 if the player is from team one */
    }
    else
    {
        genderFlag = 1; /* set the team flag to 2 if the player is from team two */
    }
    int number_of_people = toint(argv[1]);
    gunit = number_of_people;
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    srand(getpid());     /* seed the random number generator with the child's pid */
    kill(getppid(), 10); /* send signal 10 to parent to indicate that the child is ready */
    while (1)
    {
        pause();
    }

    return 0;
}

void signal_catcher(int num)
{
    int flag = genderFlag;
    if (counter > 0)
    {
        if (flag == 1)
        {

            pick_top();
        }
        else
        {

            pick_top();
        }
        counter--;
    }
}
void start(int x)
{
        int flag = genderFlag;
        for(int i=flag;i<gunit;i=i+2){
            writeFunc(gunit);
            enqueueP(oim->turns[i]);
            counter++;
            
        }
    
}


void pick_top(){
    acquire.sem_num = TO_CONSUME;
    if (semop(semid, &acquire, 1) == -1)
    {
        perror("semop -- acquire -- child");
        exit(4);
    }

    if (genderFlag == 1){
        dequeue(mq);
 
    }
    else{
        dequeue(fq);

    }
    release.sem_num = AVAIL_SLOTS;
    if (semop(semid, &release, 1) == -1)
    {
        perror("semop -- release -- child");
        exit(4);
    }
}
void enqueueP(int pid){
    acquire.sem_num = AVAIL_SLOTS;
    if (semop(semid, &acquire, 1) == -1)
    {
        perror("semop -- acquire -- child");
        exit(4);
    }

    if (genderFlag == 1){
        enqueue(mq, pid);
    }
    else{
        enqueue(fq, pid);
    }


    release.sem_num = TO_CONSUME;
    if (semop(semid, &release, 1) == -1)
    {
        perror("semop -- release -- child");
        exit(4);
    }
}
writeFunc(int x)
{
    char str[20];
    sprintf(str, "*** shit   %d  ***\n", x);
    write(1, str, strlen(str));
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
