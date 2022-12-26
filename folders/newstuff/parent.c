#include "file.h"

pid_t pid, producer1, producer2, consumer;
OIM *oim;
Queue *mq, *fq, *iq1 , *iq2 , *iq3 , *iq4;
Person *people;
Turn *turnsSHM;
innerHall *innerHallSHM;
Person peopleArray[maxSize];
int readyCounter = 0;
int flag = 1;
int unServerdCounter = 0;
int happyCounter = 0;
int unSatisfiedCouner = 0;

int pick_random_customer(float[number_of_people][2], float);
void signaleCatcherReadyState(int);
void terminate(int);
void unServerdCounterFunction(int);
int searchinArray(int, int[]);

void main(int argc, char *argv[])
{
    reading_file(fp);
    int shmid, shmid1, shmid2, shmid3;
    pid = getpid();
    char str[10];
    float customersPorb[number_of_people][2];
    int turns[number_of_people];
    int first = 0;
    int cnt = number_of_people;
    static ushort start_val[2] = {N_SLOTS, 0};
    static ushort start_val1[2] = {N_SLOTS, 0};
    static ushort start_val2[4] = {4, 0, 0, 0};
    static ushort start_val3[2] = {50, 0};
    union semun arg, arg1, arg2, arg3;
    int size = sizeof(Person) * number_of_people;
    int size1 = sizeof(Turn) * number_of_people;
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
    if ((shmid = shmget((int)pid, sizeof(OIM), IPC_CREAT | 0666)) != -1)
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
    if ((shmid1 = shmget((int)pid + 1, size, IPC_CREAT | 0666)) != -1)
    { // size of the shared memory is the size of the struct which

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
    if ((shmid2 = shmget((int)pid + 2, size1, IPC_CREAT | 0666)) != -1)
    { // size of the shared memory is the size of the struct which

        if ((turnsSHM = (Turn *)shmat(shmid2, 0, 0)) == (char *)-1)
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
    if ((shmid3 = shmget((int)pid + 3, sizeof(innerHall), IPC_CREAT | 0666)) != -1)
    { // size of the shared memory is the size of the struct which

        if ((innerHallSHM = shmat(shmid3, 0, 0)) == (char *)-1)
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
    if ((semid = semget((int)pid, 2,
                        IPC_CREAT | 0666)) != -1)
    {
        arg.array = start_val;

        if (semctl(semid, 0, SETALL, arg) == -1)
        {
            perror("semctl -- parent -- initialization");
            exit(3);
        }
    }
    else
    {
        perror("semget -- parent -- creation");
        exit(4);
    }

    if ((semid1 = semget((int)pid + 1, 2,
                         IPC_CREAT | 0666)) != -1)
    {
        arg1.array = start_val1;

        if (semctl(semid1, 0, SETALL, arg1) == -1)
        {
            perror("semctl -- parent -- initialization");
            exit(3);
        }
    }
    else
    {
        perror("semget -- parent -- creation");
        exit(4);
    }
    if ((semid2 = semget((int)pid + 2, 4,
                         IPC_CREAT | 0666)) != -1)
    {
        arg2.array = start_val2;

        if (semctl(semid2, 0, SETALL, arg2) == -1)
        {
            perror("semctl -- parent -- initialization");
            exit(3);
        }
    }
    else
    {
        perror("semget -- parent -- creation");
        exit(4);
    }
    if ((semid3 = semget((int)pid + 3, 2,
                         IPC_CREAT | 0666)) != -1)
    {
        arg3.array = start_val3;

        if (semctl(semid3, 0, SETALL, arg3) == -1)
        {
            perror("semctl -- parent -- initialization");
            exit(3);
        }
    }
    else
    {
        perror("semget -- parent -- creation");
        exit(4);
    }
    if((semid4 = semget((int)pid + 4, 2,
                         IPC_CREAT | 0666)) != -1)
    {
        arg3.array = start_val3;

        if (semctl(semid4, 0, SETALL, arg3) == -1)
        {
            perror("semctl -- parent -- initialization");
            exit(3);
        }
    }
    else
    {
        perror("semget -- parent -- creation");
        exit(4);
    }
    if((semid5 = semget((int)pid + 5, 2,
                         IPC_CREAT | 0666)) != -1)
    {
        arg3.array = start_val3;

        if (semctl(semid5, 0, SETALL, arg3) == -1)
        {
            perror("semctl -- parent -- initialization");
            exit(3);
        }
    }
    else
    {
        perror("semget -- parent -- creation");
        exit(4);
    }
    mq = &oim->male_queue;
    fq = &oim->female_queue;
    iq1 = &innerHallSHM->tellerOneQueue;
    iq2 = &innerHallSHM->tellerTwoQueue;
    iq3 = &innerHallSHM->tellerThreeQueue;
    iq4 = &innerHallSHM->tellerFourQueue;
    createQueue(iq1);
    createQueue(iq2);
    createQueue(iq3);
    createQueue(iq4);
    createQueue(mq);
    createQueue(fq);
    tostring(str, number_of_people);
    printf("Parent pid is : %d\n", getpid());
    printf("Children : \n");
    for (int i = 0; i < number_of_people + 3; i++)
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
            if (i == number_of_people)
            {
                execlp("./producer", "male", str, (char *)NULL);
            }
            else if (i == number_of_people + 1)
            {
                execlp("./producer", "female", str, (char *)NULL);
            }
            else if (i == number_of_people + 2)
            {
                execlp("./consumer", "officer", str, (char *)NULL);
            }

            else if (i % 2 == 0)
                execlp("./child", "male", str, (char *)NULL); /* execute the child file with the argument team1 */
            else
                execlp("./child", "female", str, (char *)NULL); /* execute the child file with the argument team2 */
            perror("exec failure ");                            /* this when there is an exec failure : No such file or directory */
            while (1)
                ;
        }
        else
        {
            if (i == number_of_people)
            {
                producer1 = pid;
            }
            else if (i == number_of_people + 1)
            {
                producer2 = pid;
            }
            else if (i == number_of_people + 2)
            {
                consumer = pid;
            }
            else
            {
                peopleArray[i].pid = pid;
                peopleArray[i].innerHallProb = rand() % 100 + 1;
                peopleArray[i].anticipationProb = rand() % 100 + 1;
                peopleArray[i].docType = rand() % 4 + 1;
                peopleArray[i].gender = i % 2;
                peopleArray[i].status = 0;
                if (i % 2 == 0)
                {
                    peopleArray[i].timeInsideDetector = rand() % 2 + 1;
                }
                else
                {
                    peopleArray[i].timeInsideDetector = rand() % 5 + 2;
                }
            }
            printf("%d %d ,   ", i, pid);
        }
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

    if (readyCounter == number_of_people + 3)
    {
        for (int i = 0; i < number_of_people; i++)
        {
            turnsSHM[i].pid = turns[i];
            people[i] = peopleArray[i];
        }

        kill(producer1, 4);
        kill(consumer, 3);
        kill(producer2, 4);
        printf("\n***** Opening Gates its 8:00 am ....  ***** \n");
        printf("***** All customers are ready to enter ***** \n");
        while (1)
        {

            // int flag = rand() %2;
            // if (flag == 1)
            // {
            pause();
            // }
            // else
            // {
            //     kill(producer2, 3);
            // }
            // show(mq, 0);
            // show(fq, 1);
            // sleep(1);
        }
    }

    while (1)
    {
        pause();
    }
}
writeFunc(int x)
{
    char str[20];
    sprintf(str, "***   %d  ***\n", x);
    write(1, str, strlen(str));
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
    write(1, "Parent is waiting for children to finish", 40);

    printf("test");
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
    // printf("unServerdCounter = %d\n", unServerdCounter);
    // write(1, "unServerdCounter = ", 19);
}

void terminate(int sig)
{
    semctl(semid, 0, IPC_RMID, 0);               /* remove semaphore */
    shmctl(oim, IPC_RMID, (struct shmid_ds *)0); /* remove */
    for (int i = 0; i < number_of_people; i++)
    {
        kill(peopleArray[i].pid, 9);
    }
    exit(0);
}

void tostring(char str[], int num)
{
    int i, rem, len = 0, n;
    n = num;
    while (n != 0)
    {
        len++;
        n /= 10;
    }
    for (i = 0; i < len; i++)
    {
        rem = num % 10;
        num = num / 10;
        str[len - (i + 1)] = rem + '0';
    }
    str[len] = '\0';
}
