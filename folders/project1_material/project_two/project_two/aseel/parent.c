/*
 * The PARENT
 ! this file does nothing hust reads the file
 ! and create a shared memory of queue and a semaphore (((( not sure if it is correct ))))
 ? TODO: change the  valdiation function to every teller
 */

#include "local.h"

FILE *fp;
char *line = NULL;
char *ptr;         // pointer to the string
char *delim = " "; // delimiter
char *endptr;      // pointer to the end of the string
size_t len = 0;    // length of the line
size_t rline;      // number of characters read
int count = 0;     // arguments counter
long int n = 0;    // number of people
#define Max_size 20000

id_t pid, players[Max_size]; /* array of the players pids */ // we should make it
int ready_counter = 0;                                       /* counter of the ready customers */
int flag = 1;
int g_draw_pid;

void signal_catcher_ready_state(int); /* function to handle the ready signal */
int pick_random_customer(float[number_of_people][2], float);
void reading_file(FILE *fp);            // function to read the file
int splitting(char *line, char *delim); // function to split the line
int validate_values(int number_of_people, int number_of_females, int number_of_males, int number_of_unserved_people,
                    int number_of_tellers, int number_of_unhappy_people, int number_of_satisfied_people); // function to validate the values

void main(int argc, char *argv[])
{
  OIM *oim;
  static ushort start_val[2] = {N_SLOTS, 0};
  int semid, shmid;
  char *shmptr;
  pid_t p_id, c_id, pid = getpid();
  union semun arg;
  float customers_probablity[number_of_people][2];
  char *str = "sheesh";
  char s[80];

  /*
   * read and save the arguments from the file
   */

  reading_file(fp);
  int val = validate_values(number_of_people, number_of_females, number_of_males, number_of_unserved_people, number_of_tellers_B, number_of_unhappy_people, number_of_satisfied_people);
  if (val == 0)
  {
    exit(1);
  }
  else
  {

    printf("number of people = %d\n", number_of_people);
    printf("number of females = %d\n", number_of_females);
    printf("number of males = %d\n", number_of_males);
    printf("number of unserved people = %d\n", number_of_unserved_people);
    printf("number of unhappy people = %d\n", number_of_unhappy_people);
    printf("number of satisfied people = %d\n", number_of_satisfied_people);
    printf("number of tellers B = %d\n", number_of_tellers_B);
    printf("number of tellers R = %d\n", number_of_tellers_R);
    printf("number of tellers I = %d\n", number_of_tellers_I);
    printf("number of tellers T = %d\n", number_of_tellers_T);
    printf("queue threshold = %d\n", queue_threshold);
    printf("time inside the_detector males= %d\n", time_inside_the_detector_m);
    printf("time inside the_detector females= %d\n", time_inside_the_detector_f);
    printf("gate openning time = %d\n", gate_openning_time);
  }

  if (sigset(10, signal_catcher_ready_state) == -1)
  {
    perror("Sigset can not set SIGUSR1");
    exit(SIGINT);
  }

  /*
   * Create, attach and initialize the memory segment
   */

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

  /*
   * Create and initialize the semaphores
   */

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

  printf("My process ID is %d\n", getpid());
  printf("Children IDs:\n");

  /*
   * Create the children processes
   */

  for (int i = 0; i < number_of_people; i++)
  {
    flag = 1;
    pid = fork(); /* create a child process */

    // case 0: failure to create child
    if (pid == -1)
    {
      printf("fork failure ... getting out\n");
      exit(-1);
    }
    // case 1: childe process
    if (pid == 0)
    {

      if (i % 2 == 0)
        execlp("./consumer", str, "male", (char *)NULL); /* execute the child file with the argument team1 */
      else
        execlp("./consumer", str, "female", (char *)NULL); /* execute the child file with the argument team2 */
      perror("exec failure ");                             /* this when there is an exec failure : No such file or directory */
      while (1)
        ;
    }
    // case 2: parent process
    else
      players[i] = pid; // saves the id of my child
    // printf("%d \n ", players[i]);
    while (flag == 1)
      ;
  }
  printf("shit?");
  /*
   * Fork the producer process
   */
  // if ((p_id = fork()) == -1)
  // {
  //   perror("problem with fork the producer");
  //   exit(5);
  // }
  // else if (p_id == 0)
  // {
  //   execl("./producer", "./producer", (char *)0); // create  the first child process
  //   perror("problem in execl-->  producer\n");
  //   exit(6);
  // }

  // int test = 1;
  // while (1)
  // {

  //   if (ready_counter == number_of_people)
  //   { /* if all the customers are ready */
  //     for (int i = 0; i < number_of_people; i++)
  //     {
  //       float probablity = (number_of_people - i) / (float)number_of_people;
  //       customers_probablity[i][1] = probablity;
  //       customers_probablity[i][0] = players[i];
  //     }
  //     test = 0;
  //     srand(customers_probablity[0][0]);
  //     int m = 0;
  //     while (m != 10)
  //     {
  //       float random = (double)rand() / RAND_MAX;
  //       int x = pick_random_customer(customers_probablity, random);
  //       kill(x, 15);
  //       m++;
  //     }

  //     break;
  //   }
  // }
  while (1);

  /*
   * Detach and remove the memory segment
   */
  shmdt(shmptr);
  shmctl(shmid, IPC_RMID, (struct shmid_ds *)0); /* remove */
  semctl(semid, 0, IPC_RMID, 0);

  return 0;
}

/*
 * Signal catcher for SIGUSR1
 */

void signal_catcher_ready_state(int signum)
{
  flag = 0;
  ready_counter++;
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

/*
 * reading_file function
 */
void reading_file(FILE *fp)
{
  fp = fopen("args.txt", "r");
  if (fp == NULL)
  {
    printf("Unable to open file");
    exit(1);
  }
  while ((rline = getline(&line, &len, fp)) != -1)
  {
    if (strstr(line, "number_of_people") != NULL)
    {
      // Split the line using strtok function
      number_of_people = splitting(line, delim);
    }
    if (strstr(line, "number_of_femals") != NULL)
    {
      // Split the line using strtok function
      number_of_females = splitting(line, delim);
    }
    if (strstr(line, "number_of_males") != NULL)
    {
      // Split the line using strtok function
      number_of_males = splitting(line, delim);
    }
    if (strstr(line, "number_of_unserved_people") != NULL)
    {
      // Split the line using strtok function
      number_of_unserved_people = splitting(line, delim);
    }
    if (strstr(line, "queue_threshold") != NULL)
    {
      // Split the line using strtok function
      queue_threshold = splitting(line, delim);
    }
    if (strstr(line, "time_inside_the_detector_m") != NULL)
    {
      // Split the line using strtok function
      time_inside_the_detector_m = splitting(line, delim);
    }
    if (strstr(line, "time_inside_the_detector_f") != NULL)
    {
      // Split the line using strtok function
      time_inside_the_detector_f = splitting(line, delim);
    }
    if (strstr(line, "number_of_tellers_B") != NULL)
    {
      // Split the line using strtok function
      number_of_tellers_B = splitting(line, delim);
    }
    if (strstr(line, "number_of_tellers_R") != NULL)
    {
      // Split the line using strtok function
      number_of_tellers_R = splitting(line, delim);
    }
    if (strstr(line, "number_of_tellers_T") != NULL)
    {
      // Split the line using strtok function
      number_of_tellers_T = splitting(line, delim);
    }
    if (strstr(line, "number_of_tellers_I") != NULL)
    {
      // Split the line using strtok function
      number_of_tellers_I = splitting(line, delim);
    }
    if (strstr(line, "number_of_unhappy_people") != NULL)
    {
      // Split the line using strtok function
      number_of_unhappy_people = splitting(line, delim);
    }
    if (strstr(line, "number_of_satisfied_people") != NULL)
    {
      // Split the line using strtok function
      number_of_satisfied_people = splitting(line, delim);
    }
    if (strstr(line, "gate_openning_time") != NULL)
    {
      // Split the line using strtok function
      gate_openning_time = splitting(line, delim);
    }
  }

  fclose(fp);
}

/*
 * Splitting function
 */

int splitting(char *line, char *delim)
{

  ptr = strtok(line, delim);
  while (ptr != NULL)
  {
    if (count == 1)
    {
      n = strtol(ptr, &endptr, 10); // convert string to long int
    }
    count++;
    ptr = strtok(NULL, delim);
  }
  count = 0;
  return (int)n; // return the number of people as int
}

/*
 * validate_values function
 */

int validate_values(int number_of_people, int number_of_females, int number_of_males, int number_of_unserved_people, int number_of_tellers, int number_of_unhappy_people, int number_of_satisfied_people)
{
  // if (number_of_people < number_of_females + number_of_males || number_of_people > number_of_females + number_of_males)
  // {
  //   printf("Unvalid numbers of people\n");
  //   return 0;
  // }
  // if (number_of_unserved_people > number_of_people || number_of_satisfied_people > number_of_people || number_of_unhappy_people > number_of_people)
  // {
  //   printf("Unvalid numbers of unserved people or unhappy people or satisfied people\n");
  //   return 0;
  // }
  // if (number_of_tellers < 1 || number_of_tellers > 10)
  // {
  //   printf("Unvalid numbers of tellers\n");
  //   return 0;
  // }
  // if (number_of_people < number_of_unserved_people + number_of_satisfied_people + number_of_unhappy_people)
  // {
  //   printf("Unvalid numbers of people\n");
  //   return 0;
  // }
  return 1;
}