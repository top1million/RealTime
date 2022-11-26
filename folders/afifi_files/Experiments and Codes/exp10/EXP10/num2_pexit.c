#include <stdio.h>
#include <pthread.h>
pthread_t thread;
static int arg;
static const int real_bad_error = 12;
static const int normal_error = 10;
static const int success = 1;
void * routine_x(void *arg_in) {
	int *arg = (int *) arg_in; // cast the arg to int *


	if (*arg < 0){ ////negative number
		pthread_exit((void *) &real_bad_error);} // return real_bad_error as an exit status
	else if (*arg == 0){ //if zero
		return ((void *) &normal_error); // return real_bad_error as an exit status
	}
	else{
		return ((void *) &success);
	}
}

/*
* We have to send a multi-digit integer as command line arg
* try to send 
  1) positive integer
  2) negative integer
  3) zero
*/
int main(int argc, char **argv) {
	pthread_t thread;
	int r;
	void *statusp;
	if (argc != 2) {
		fprintf(stderr, "You must supply an integer as argument!\n");
		exit(-1);
	}
	r = atoi(argv[1]); // convert the string number to int
	pthread_create(&thread, NULL, routine_x, &r);
	pthread_join(thread, &statusp);
	if ((int *) statusp == PTHREAD_CANCELED){
		printf("Thread was canceled.\n");
	}
	else{
		printf("Thread completed and exit status is %ld.\n", *(int *) statusp);
	}
	return 0;
}
