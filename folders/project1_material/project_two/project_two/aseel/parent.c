/*
 * The PARENT
 ! this file does nothing hust reads the file 
 ! and create a shared memory of queue and a semaphore (((( not sure if it is correct )))) 
 ? TODO: change the  valdiation function to every teller
 */

#include "local.h"

FILE *fp;
char *line = NULL;
char *ptr; // pointer to the string
char *delim= " "; // delimiter
char *endptr; // pointer to the end of the string
size_t len = 0; // length of the line
size_t rline; // number of characters read
int count = 0 ; // arguments counter
long int n = 0; // number of people 

void reading_file(FILE *fp); // function to read the file
int splitting(char *line, char *delim); // function to split the line
int validate_values(int number_of_people, int number_of_females , int number_of_males, int number_of_unserved_people, 
                    int number_of_tellers, int number_of_unhappy_people, int number_of_satisfied_people); // function to validate the values

void main(int argc, char *argv[])
{
  static struct  Queue queue;
  static ushort  start_val[2] = {N_SLOTS, 0};
  int            semid, shmid;
  char          *shmptr;
  pid_t          p_id, c_id, pid = getpid();
  union semun    arg;
  
  /*
   * read and save the arguments from the file
   */

  reading_file(fp);
  int val = validate_values(number_of_people, number_of_females, number_of_males, number_of_unserved_people, number_of_tellers_B, number_of_unhappy_people, number_of_satisfied_people);
  if (val == 0){
        exit(1);
  }
  else{

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
    printf("queue threshold = %d\n", queue_threshold );
    printf("time inside the_detector= %d\n", time_inside_the_detector);
    printf("gate openning time = %d\n", gate_openning_time);
    }

  /*
   * Create, attach and initialize the memory segment
   */

  if ( (shmid = shmget((int) pid, sizeof(queue)*2,  IPC_CREAT | 0600)) != -1 ) {  // sizeof(memory) = 216 bytes
    
    if ( (shmptr = (char *) shmat(shmid, 0, 0)) == (char *) -1 ) {
      perror("problem with shmat");
      exit(1);
    }
    memcpy(shmptr, (char *) &queue, sizeof(queue));  // this is how we formate the memory
  }

  else {
    perror("problem with shmget");
    exit(2);
  }
  
  /*
   * Create and initialize the semaphores
   */
  
  if ( (semid = semget((int) pid, 2, IPC_CREAT | 0666)) != -1 ) {
    arg.array = start_val;
    
    if ( semctl(semid, 0, SETALL, arg) == -1 ) {
      perror("problem with semctl");
      exit(3);
    }
  }
  else {
    perror("problem with semget");
    exit(4);
  }
  
  /*
   * Fork the producer process ( we will have one producer and many consumers)
   */
  if ( (p_id = fork()) == -1 ) {
    perror("problem with fork the producer");
    exit(5); 
  }
  else if ( p_id == 0 ) {
    execl("./producer", "./producer", argv[1], (char *) 0); // create  the first child process
    perror("problem in execl-->  producer\n");
    exit(6);
  }
  
  /*
   * Fork the consumer process
     ! ( we will have one producer and many consumers) ( not implementated yet)
   */
  if ( (c_id = fork()) == -1 ) {
    perror("problem with fork the consumer");
    exit(7); 
  }
  else if ( c_id == 0 ) {
    execl("./consumer", "./consumer", argv[2], (char *) 0); // create the second child process
    perror("problem in execl-->  consumer\n");
    exit(8);
  }
  

  /*
   * Detach and remove the memory segment
   */
  shmdt(shmptr);
  shmctl(shmid, IPC_RMID, (struct shmid_ds *) 0); /* remove */
  semctl(semid, 0, IPC_RMID, 0);
  
  exit(0);
}

void reading_file(FILE *fp){
        fp = fopen("args.txt", "r");
    if (fp == NULL) {
        printf("Unable to open file");
        exit(1);
    }
    while ((rline  = getline(&line, &len, fp)) != -1) {
        if (strstr(line, "number_of_people") != NULL) {
            // Split the line using strtok function
            number_of_people = splitting(line, delim);
        }
        if (strstr(line, "number_of_femals") != NULL) {
            // Split the line using strtok function
            number_of_females = splitting(line, delim);
        }
        if (strstr(line, "number_of_males") != NULL) {
            // Split the line using strtok function
            number_of_males = splitting(line, delim);
        }
        if (strstr(line, "number_of_unserved_people") != NULL) {
            // Split the line using strtok function
            number_of_unserved_people = splitting(line, delim);
        }
        if (strstr(line, "queue_threshold") != NULL) {
            // Split the line using strtok function
            queue_threshold = splitting(line, delim);
        }
        if (strstr(line, "time_inside_the_detector") != NULL) {
            // Split the line using strtok function
            time_inside_the_detector  = splitting(line, delim);
        }
        if (strstr(line, "number_of_tellers_B") != NULL) {
            // Split the line using strtok function
            number_of_tellers_B= splitting(line, delim);
        }
        if (strstr(line, "number_of_tellers_R") != NULL) {
            // Split the line using strtok function
            number_of_tellers_R= splitting(line, delim);
        }
        if (strstr(line, "number_of_tellers_T") != NULL) {
            // Split the line using strtok function
            number_of_tellers_T= splitting(line, delim);
        }
        if (strstr(line, "number_of_tellers_I") != NULL) {
            // Split the line using strtok function
            number_of_tellers_I= splitting(line, delim);
        }
        if (strstr(line, "number_of_unhappy_people") != NULL) {
            // Split the line using strtok function
            number_of_unhappy_people  = splitting(line, delim);
        }
        if (strstr(line, "number_of_satisfied_people") != NULL) {
            // Split the line using strtok function
            number_of_satisfied_people = splitting(line, delim);
        }
        if (strstr(line, "gate_openning_time") != NULL) {
            // Split the line using strtok function
            gate_openning_time = splitting(line, delim);
        }
    }

    fclose(fp);
}

int splitting(char *line, char *delim){

    ptr = strtok(line, delim);
    while (ptr != NULL) { 
    if (count == 1 ) {
    n = strtol(ptr, &endptr, 10); // convert string to long int                 
    }
    count++;
    ptr = strtok(NULL, delim);
    }
    count = 0;
    return (int) n; // return the number of people as int 

}

int validate_values(int number_of_people, int number_of_females , int number_of_males, int number_of_unserved_people, int number_of_tellers, int number_of_unhappy_people, int number_of_satisfied_people)
    {
    if (number_of_people < number_of_females + number_of_males  || number_of_people > number_of_females + number_of_males ){
        printf("Unvalid numbers of people\n");
        return 0;
    }
    if (number_of_unserved_people > number_of_people || number_of_satisfied_people > number_of_people || number_of_unhappy_people > number_of_people ){
        printf("Unvalid numbers of unserved people or unhappy people or satisfied people\n");
        return 0;
    }
    if (number_of_tellers < 1 ||  number_of_tellers > 10){
        printf("Unvalid numbers of tellers\n");
        return 0;
    }
    if (number_of_people < number_of_unserved_people + number_of_satisfied_people + number_of_unhappy_people){
        printf("Unvalid numbers of people\n");
        return 0;
    }
    return 1;
} 