#include <stdio.h>
#include <pthread.h>
void do_one_thing(int *);
void do_another_thing(int *);
void do_wrap_up(int, int);
int r1 = 0, r2 = 0, r3 = 0;
pthread_mutex_t r3_mutex = PTHREAD_MUTEX_INITIALIZER; // create new threads mutex with default configuration
pthread_t thread1,
thread2;
int main(int argc, char **argv) {

	//create two threads
	pthread_create(&thread1, NULL, (void *) do_one_thing, (void *) &r1);
	pthread_create(&thread2, NULL, (void *) do_one_thing, (void *) &r2);

	//wait for them to finish
	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);
	return 0;
}
void do_one_thing(int *pnum_times) {
	int k;
	pthread_t thread;
	while (1) {
		pthread_mutex_lock(&r3_mutex); // lock the critical section (so thread 2 will have to wait until thread1 finishes)
		thread = pthread_self(); // get the id(or thread_t) of the current thread
		if (pthread_equal(thread1, thread) ){ // if it's thread1 we will increment
			printf("Thread %d: %d\n", thread, ++r3);
		}
		else{ // else we  will decrement
			printf("Thread %d: %d\n", thread, --r3);
		}
		pthread_mutex_unlock(&r3_mutex); // unlock the critical section
		
		for (k = 0; k < 10000000; k++){
			;
		}
	}
}
