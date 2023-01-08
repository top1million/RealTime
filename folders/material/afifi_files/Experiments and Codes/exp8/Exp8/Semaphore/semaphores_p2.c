/*

 The idea to make counter and make each one second. The client and server change it using semaphore between them




 gcc semaphore_example.c -o run -lpthread
 ./run

 */

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

int main() {
	sem_t *m;

	//create semaphore
	if ((m = sem_open("mysemaphore", O_CREAT, 0644, 1)) == SEM_FAILED) {
		perror("semaphore initialization");
		exit(1);
	}

	/*
		CRITICAL SECTION
	*/
	printf("Process 2 has started its critical section\n");
	sleep(2);
	printf("Process 2 has finished its critical section\n");

	sem_post(m); // release the semaphore to make other processes enter their critical section

	return 0;
}
