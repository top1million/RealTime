#include "file.h"

#define maxSize 2000

pid_t pid;
OIM *oim;
Queue *mq, *fq;
Person peopleArray[maxSize];
int readyCounter = 0;
int flag, maleQueueFlag, femaleQueueFlag = 1;
int unServerdCounter = 0;
int maleQueueCounter, femaleQueueCounter = 0;

int pick_random_customer(float[number_of_people][2], float);
void signaleCatcherReadyState(int);
void terminate(int);
void ignoreSig(int);
void unServerdCounterFunction(int);
void maleQueueFlagChanger(int);
void femaleQueueFlagChanger(int);
int searchinArray(int, int[]);

void main(int argc, char *argv[])
{
    reading_file(fp);
    int shmid;
    pid = getpid();
    char str[10];
    float customersPorb[number_of_people][2];
    int turns[number_of_people];
    int first = 0;
    int cnt = number_of_people;
    static ushort start_val[2] = {N_SLOTS, 0};
    union semun arg;
    srand(getpid());
    for (int i = 0; i < number_of_people; i++)
    {
        turns[i] = 0;
    }
    if (sigset(10, signaleCatcherReadyState) == SIG_ERR)
    {
        perror("sigset");
        exit(1);
    }
    if (sigset(2, terminate) == SIG_ERR)
    {
        perror("sigset");
        exit(1);
    }
    if (sigset(20, maleQueueFlagChanger) == SIG_ERR)
    {
        perror("sigset");
        exit(1);
    }
    if (sigset(21, femaleQueueFlagChanger) == SIG_ERR)
    {
        perror("sigset");
        exit(1);
    }
    if ((shmid = shmget((int)pid, sizeof(oim) * 2, IPC_CREAT | 0666)) != -1)
    { // size of the shared memory is the size of the struct which

        if ((oim = shmat(shmid, 0, 0)) == (char *)-1)
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
    if ((semid = semget((int)pid, 2, IPC_CREAT | 0666)) != -1)
    {
        arg.array = start_val;

        if (semctl(semid, 0, SETALL, arg) == -1)
        {
            perror("problem with semctl");
            exit(3);
        }
    }
    else
    {
        perror("problem with semget");
        exit(4);
    }
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    createQueue(mq);
    createQueue(fq);

    printf("Parent pid is : %d\n", getpid());
    printf("Children:\n");
    for (int i = 0; i < number_of_people; i++)
    {
        flag = 1;
        pid = fork();
        if (pid == -1)
        {
            printf("Error in fork");
            exit(1);
        }
        if (pid == 0)
        {
            if (i % 2 == 0)
                execlp("./child", "male", str, (char *)NULL); /* execute the child file with the argument team1 */
            else
                execlp("./child", "female", str, (char *)NULL); /* execute the child file with the argument team2 */
            perror("exec failure ");                            /* this when there is an exec failure : No such file or directory */
            while (1)
                ;
        }
        else
        {
            peopleArray[i].pid = pid;
            peopleArray[i].innerHallProb = rand() % 100 + 1;
            peopleArray[i].anticipationProb = rand() % 100 + 1;
            peopleArray[i].docType = rand() % 4 + 1;
            peopleArray[i].gender = i % 2;
            if(i%2==0){
                peopleArray[i].timeInsideDetector = rand() % 2 + 1;
            }
            else{
                peopleArray[i].timeInsideDetector = rand() % 5 + 2;
            }
            

        }
        printf("%d,", pid);
        while (flag == 1)
            ;
    }
    for (int i = 0; i < number_of_people; i++)
    {
        float prob = (number_of_people - i) / (float)number_of_people;
        customersPorb[i][0] = peopleArray[i].pid;
        customersPorb[i][1] = prob;
    }

    while (cnt > 0)
    {
        float random = (double)rand() / RAND_MAX;
        int x = pick_random_customer(customersPorb, random);
        if (searchinArray(x, turns) == 0)
        {
            turns[first] = x;
            first++;
            cnt--;
        }
    }
    fflush(stdin);
    fflush(stdout);
    if (readyCounter == number_of_people)
    {
        printf("\n***** Opening Gates its 8:00 am ....  ***** \n");
        int numOfPeople = number_of_people;
        for (int i = 0; i < number_of_people; i++)
        {
            int g = (turns[i] - getpid()+1) % 2;
            if (g % 2 == 0)
            {
                maleQueueFlag = 1;
                while (maleQueueCounter > 20)
                {
                    show(mq, 0);
                    printf("***** Closing Male Rolling Gates ....  ***** %d \n", maleQueueCounter);
                }
                kill(turns[i], 3);
                maleQueueCounter++;
                while (maleQueueFlag == 1)
                {
                    pause();
                }
            }
            else
            {
                femaleQueueFlag = 1;
                if (femaleQueueCounter > 4)
                {
                    sleep(1);
                    show(fq, 1);
                    printf("***** Closing Female Rolling Gates ....  ***** %d \n", femaleQueueCounter);
                    for (int j = 0; j < 5; j++)
                    {
                        int cust = dequeue(fq);
                        femaleQueueCounter--;
                    }
                }
                kill(turns[i], 3);
                femaleQueueCounter++;
                while (femaleQueueFlag == 1)
                {
                    pause();
                }
            }
        }
    }

    while (1)
    {
        pause();
    }
}

int searchinArray(int x, int arr[number_of_people])
{
    for (int i = 0; i < number_of_people; i++)
    {
        if (arr[i] == x)
        {
            return 1;
        }
    }
    return 0;
}

void signaleCatcherReadyState(int signum)
{
    flag = 0;
    readyCounter++;
}

/*
    pick_random_customer function
*/

int pick_random_customer(float customers_probablity[number_of_people][2], float random)
{
    // Generate a random number between 0 and 1
    // Loop through the elements in the array

    float sum = 0;
    for (int i = 0; i < number_of_people; i++)
    {

        // Check if the random number is within the probability range of this element
        sum += customers_probablity[i][1];
        if (random < sum)
        {
            // printf("%f \n",random);
            // If it is, select this element
            customers_probablity[i][1] = 0;
            return customers_probablity[i][0];
            break;
        }
    }
    return 0;
}
void unServerdCounterFunction(int signum)
{
    unServerdCounter++;
    printf("unServerdCounter = %d\n", unServerdCounter);
    write(1, "unServerdCounter = ", 19);
}

void terminate(int sig)
{
    // shmctl(oim, IPC_RMID, (struct shmid_ds *)0); /* remove */
    for (int i = 0; i < number_of_people; i++)
    {
        kill(peopleArray[i].pid, 9);
    }
    exit(0);
}

void writeFunc(int num)
{
    char str[50];
    sprintf(str, "queue Counter is %d \n", num);
    write(1, str, strlen(str));
}

void maleQueueFlagChanger(int signum)
{
    maleQueueFlag = 0;
}
void femaleQueueFlagChanger(int signum)
{
    femaleQueueFlag = 0;
}
/*

[1,2,3,4,5,6,7,8,9,10]

12345
1
2
3
4
56789

*/