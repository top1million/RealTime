/*
 * The PARENT
 */
#include "local.h"
#define  num_of_customers  20
void signal_catcher_ready_state(int); /* function to handle the ready signal */
int pick_random_customer(float[number_of_people][2],float);
id_t pid, players[number_of_people] ;     /* array of the players pids */
int ready_counter = 0;                /* counter of the ready customers */
int flag = 1;
int g_draw_pid;

main(int argc, char *argv[])
{
  float customers_probablity[number_of_people][2] ;
  sem_init(&semEmpty, 1, 4);
  sem_init(&semFull, 1, 0);
  static struct  MEMORY memory;
  int            semid, shmid;
  char          *shmptr;
  pid_t          p_id, c_id, pid = getpid();
  union semun    arg;
  char* str= "sheesh";
  char s[80];
  // int drawer_pid = fork();                            /* create a child process */           /* convert the pid to string */
  int male_queue[4];
  int female_queue[25];
  if (sigset(10,signal_catcher_ready_state)==-1){
    perror("Sigset can not set SIGUSR1");
    exit(SIGINT);
  }
  /*
   * Create, attach and initialize the memory segment
   */
  if ( (shmid = shmget((int) pid, sizeof(memory),IPC_CREAT | 0600)) != -1 ) {
    if ( (shmptr = (char *) shmat(shmid, 0, 0)) == (char *) -1 ) {
      perror("shmptr -- parent -- attach");
      exit(1);
    }
    memcpy(shmptr, (char *) &memory, sizeof(memory));
  }
  else {
    perror("shmid -- parent -- creation");
    exit(2);
  }
  // tostring(str, drawer_pid);
  // printf("%s",str);
  // if (drawer_pid == -1) {                             /* case 0: failure to create child */
  //   printf("fork failure ... getting out\n");
  //   exit (-1);
  // }
  // if ( drawer_pid == 0 ) {                            /* case 1: childe process */
  //   execlp("./point", "point", (char *) NULL);     /* execute the child file with the argument drawer */
  //   perror("exec failure ");                         /* this when there is an exec failure : No such file or directory */
  //   while(1); 
  // }
  // g_draw_pid = drawer_pid;


/* ****************************************************************************************************************************/

  printf("My process ID is %d\n", getpid());
  printf("Children IDs:\n");

  for (int i = 0; i < number_of_people; i++ ) 
  {
    flag = 1 ;
    pid = fork();                                   /* create a child process */

    // case 0: failure to create child
    if (pid == -1) { 
      printf("fork failure ... getting out\n");
      exit (-1);
    }
    // case 1: childe process 
    if ( pid == 0 ) { 
      
      if(i%2 == 0 )
      execlp("./child", str,"male", (char *) NULL);   /* execute the child file with the argument team1 */
      else
      execlp("./child", str,"female", (char *) NULL);  /* execute the child file with the argument team2 */
      perror("exec failure ");                    /* this when there is an exec failure : No such file or directory */
      while(1); 
    }
    // case 2: parent process
    else
      players[i] = pid;                         // saves the id of my child
      // printf("%d \n ", players[i]); 
    while(flag == 1);
  }
  int test = 1;
  while(1){ 
    
  if (ready_counter == number_of_people ){         /* if all the customers are ready */
    for(int i = 0 ; i < number_of_people ; i++){
      float probablity = (number_of_people - i) / (float)number_of_people;
      customers_probablity[i][1] = probablity;
      customers_probablity[i][0] = players[i];
    }
    test =0;
    srand(customers_probablity[0][0]);
    int m = 0;
    while(m != 10){
      float random = (double)rand() / RAND_MAX;
      int x = pick_random_customer(customers_probablity,random);
      kill(x, 15);
      m++;
    }

    break;
  }
  }

  while(1);
  sem_destroy(&semEmpty);
  sem_destroy(&semFull);
  return(0);
}
void signal_catcher_ready_state(int signum){
  flag = 0;
  ready_counter++;
}

int pick_random_customer(float customers_probablity[number_of_people][2],float random){
  // Generate a random number between 0 and 1
  // Loop through the elements in the array
  
  float sum = 0;
  for (int i = 0; i < number_of_people; i++) {
    
      // Check if the random number is within the probability range of this element
      sum += customers_probablity[i][1];
      if (random < sum) {
        // printf("%f \n",random);
          // If it is, select this element
          customers_probablity[i][1] = 0;
          return customers_probablity[i][0];
          break;
      }
  }
  return 0;
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



/*
#include <stdio.h>
#include <stdlib.h>

#define NUM_ELEMENTS 5

int main() {
    int array[NUM_ELEMENTS] = {1, 2, 3, 4, 5};
    double probabilities[NUM_ELEMENTS] = {0.1, 0.2, 0.3, 0.1, 0.8};

    srand(time(NULL));
    // Generate a random number between 0 and 1
    double random = (double)rand() / RAND_MAX;

    // Loop through the elements in the array
    int i;
    double sum = 0;
    for (i = 0; i < NUM_ELEMENTS; i++) {
        // Check if the random number is within the probability range of this element
        sum += probabilities[i];
        if (random < sum) {
            // If it is, select this element
            printf("Selected element: %d\n", array[i]);
            break;
        }
    }

    return 0;
}

*/