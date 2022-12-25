/*
 * The PARENT
 ! this file does nothing hust reads the file
 ! and create a shared memory of queue and a semaphore (((( not sure if it is correct ))))
 ? TODO: change the  valdiation function to every teller
 */

#include "local.h"
#include "file.h"

#define Max_size 20000

id_t pid, players[Max_size]; /* array of the players pids */ // we should make it
int ready_counter = 0;                                       /* counter of the ready customers */
int flag = 1;
int g_draw_pid;

void signal_catcher_ready_state(int); /* function to handle the ready signal */
int pick_random_customer(float[number_of_people][2], float);
void killallhaha(int sig);
void ignore(int sig);
int shmid;
char *shmptr;
void main(int argc, char *argv[])
{
  OIM *oim;
  static ushort start_val[2] = {N_SLOTS, 0};
  pid_t prodpid, pid = getpid();
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
    printf("The values are valid");
  }

  if (sigset(10, signal_catcher_ready_state) == -1)
  {
    perror("Sigset can not set SIGUSR1");
    exit(SIGINT);
  }
  if (sigset(2, killallhaha) == -1)
  {
    perror("Sigset can not set SIGUSR1");
    exit(SIGINT);
  }
  if (sigset(15, ignore) == -1)
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

  for (int i = 0; i < number_of_people + 1; i++)
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
      if (i == number_of_people)
      {
        execlp("./producer", "test", (char *)NULL); /* execute the child file with the argument team1 */
      }
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
    {
      if (i == number_of_people)
      {
        prodpid = pid;
      }
      else
      {
        players[i] = pid; // saves the id of my child
        printf("%d \n ", players[i]);
      }
    }
    while (flag == 1)
      ;
  }

  int test = 1;
  while (1)
  {

    if (ready_counter == number_of_people)
    { /* if all the customers are ready */
      for (int i = 0; i < number_of_people; i++)
      {
        float probablity = (number_of_people - i) / (float)number_of_people;
        customers_probablity[i][1] = probablity;
        customers_probablity[i][0] = players[i];
      }
      test = 0;
      srand(customers_probablity[0][0]);
      int m = 0;
      while (m != number_of_people + 1)
      {
        float random = (double)rand() / RAND_MAX;
        int x = pick_random_customer(customers_probablity, random);
        printf("random number x = %d\n", x);
        kill(x, 15);
        m++;
      }

      break;
    }
  }
  while (1)
    ;

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

void killallhaha(int sig)
{
  shmdt(shmptr);
  shmctl(shmid, IPC_RMID, (struct shmid_ds *)0); /* remove */
  semctl(semid, 0, IPC_RMID, 0);
  for (int i = 0; i < number_of_people; i++)
  {
    kill(players[i], 9);
  }
  exit(0);
}

void ignore(int sig)
{
  printf("who sent me this signal!!!!!!!\n");
}