#include <stdio.h>
#include <sys/ipc.h>
#include <time.h>
#include <sys/msg.h>
#include <sys/shm.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/wait.h>  /* Needed for the wait function */
#include <unistd.h>    /* needed for the fork function */
#include <string.h>    /* needed for the strcat function */
#include <stdio.h>
#include <stdlib.h>
#include <semaphore.h>
#include <stdint.h>
#include <sys/mman.h>


struct task{
      long pid_inc;
      int num;

};

int main(){
	sem_t *m1,*m2;
	if((m1 = sem_open("mysemaphore1",O_CREAT,0644,1)) == SEM_FAILED)
	{
		perror("Error");
		exit(1);
	}
	if((m2 = sem_open("mysemaphore2",O_CREAT,0644,1)) == SEM_FAILED)
	{
		perror("Error");
		exit(1);
	}
	sem_init(m1, 1, 0); 
	sem_init(m2, 1, 0); 
	int shmid;
	struct task *shm;
        
	
	if (fork() == 0)
	{
		shmid = shmget(2659,sizeof(struct task)*10, 0666 | IPC_CREAT);
		if(shmid < 0)
		{
			printf("ERROR CREATING SHARED MEMORY IN CLIENT\n");
		}
		shm = (struct task *)shmat(shmid,NULL,0);
		
		if(shm < 0)
		{
			printf("ERROR ATTACHING SHARED MEMORY IN CLINET\n");
		}
		printf("in child\n");
		sem_wait(m1);
		int pid = getpid();
		srand(time(NULL));
		for(int i = 0; i < 10; i++)
		{
			shm[i].pid_inc = pid++;
			shm[i].num = (rand() % (20 - 0 + 1));
           		//(rand() %(upper - lower + 1)) + lower;
		}
		sem_post(m1);
		sem_post(m2);
		printf("Client put values into shared memory\n");
		
		shmdt(shm);
	}	
	else
	{
		shmid = shmget(2659,sizeof(struct task)*10, 0666 | IPC_CREAT);
		if(shmid < 0)
		{
			printf("ERROR CREATING SHARED MEMORY IN SERVER\n");
		}
		shm = (struct task *)shmat(shmid,NULL,0);
		
		if(shm < 0)
		{
			printf("ERROR ATTACHING SHARED MEMORY IN SERVER\n");
		}
		for(int i = 0; i < 10; i++)
		{
			shm[i].pid_inc = 0;
			shm[i].num = 0;
		}
		sem_post(m1);
		printf("Server initialised shared memory with 0s\n");
		sem_wait(m2);
		sem_wait(m1);
		
		long pid = 0;
		float mean = 0;
		for(int i = 0; i < 10; i++)
		{
			//*shm += (i*sizeof(struct task));
			if(!i)
			{
				pid = shm[i].pid_inc;
			}
			mean+= shm[i].num;
			printf("Cell %d Has PID_INC value = %ld and Num = %d\n",i,shm[i].pid_inc,shm[i].num);
			
		}
		mean/= 10;
		printf("the mean is %f\n and pid is %ld \n",mean,pid);
		shmdt(shm);
	}
	return 0;
}
