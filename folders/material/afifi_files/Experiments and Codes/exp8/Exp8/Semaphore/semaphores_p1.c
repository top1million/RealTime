
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <sys/wait.h>  /* Needed for the wait function */
#include <unistd.h>    /* needed for the fork function */
#include <string.h>    /* needed for the strcat function */
#include <stdio.h>
#include <stdlib.h>
#include <semaphore.h>
#include <stdint.h>
#include <sys/mman.h>

/*
 To compile it
 gcc semaphore_p1.c -o p1 -lpthread
 */
int main() {
	sem_t *m;

	//create semaphore
	if ((m = sem_open("mysemaphore", O_CREAT, 0644, 1)) == SEM_FAILED) {
		perror("semaphore initialization");
		exit(1);
	}

	//initialize with values 0
	// second arg is to make it sharable with other processes, third on is initial value of semaphore
	int mm = sem_init(m, 1, 0); 

	printf("Process 1 is waiting for p2 to finish \n");

	sem_wait(m); //wait until there are resources to available

		/*
			critical Section 

		*/
		printf("Process 1 has entered the critical Section After P2 has finished \n");
		sleep(2);
		printf("Process 1 has finished the critical Section\n");

	sem_post(m); // release the semaphore

	return 0;
}
