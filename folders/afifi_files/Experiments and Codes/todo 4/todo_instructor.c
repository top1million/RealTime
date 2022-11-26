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
#include <pthread.h>
#include <sys/socket.h> //for sock()
#include <string.h> //for using memset
#include <arpa/inet.h> // for inet_addr()
#include <unistd.h> //for using write() function

struct message
{
	int grades[4];
	int calc_avg;
	int submit_avg;
	int grade;
}msg;

void avg_thread(struct message *);
void grade_thread(struct message *);
    
struct message data_send;
pthread_mutex_t r3_mutex = PTHREAD_MUTEX_INITIALIZER;

int main(){
  
	pthread_t thread1, thread2;
    int sock=0, client_conn=0;
	/* This struct is in 'netinet/in.h' to to handle internet addresses */
    struct sockaddr_in ServerIp;
    int opt = 1;
	/* Create TCP(SOCK_STREAM) socket with address family IPv4(AF_INET) */
    sock = socket(AF_INET, SOCK_STREAM, 0);
	/*
	ServerIp is used to store the details of server
	memset used to initialize each byte of the passed variable with zero value
	*/
    memset(&ServerIp,'0',sizeof(ServerIp) );
	
	/* Configure settings in address struct */
    ServerIp.sin_family = AF_INET;
	/* To guarantee data order between host and network(Router) (They could be little endian or big endian architecture) */
	/* You should use port number +1000 */
    ServerIp.sin_port = htons(9090);
	/* Local host address */
    ServerIp.sin_addr . s_addr = inet_addr("127.0.0.1");
     
	/* Allocate a port number to with the IP address to a socket */
    if(bind(sock,(struct sockaddr* )&ServerIp, sizeof(ServerIp)) == -1 ){
        printf("Socket binding failed\n");
		exit(1);
	}
    
	/* Accept incoming connections up to 20 */
    if(listen(sock,2) == -1) {
        printf("listen: Error\n");
		exit(1);
	}
    else	
        printf("Server started\n");
    
	while(1) {
		printf("Waiting for client..\n");
		client_conn = accept( sock, (struct sockaddr*)NULL, NULL);
		printf("A connection established with client\n");
		/* stdin: Read from the terminal */
		for(int i = 0; i <5; i++)
        {
            char a;
            recv(sock,(char)a, sizeof(char), 0); 
            if(i < 4)
            {
                data_send.grades[i] = (int)a;
                printf("Grade %d reveived is %d\n",i+1,data_send.grades[i]);
            }
            else
            {
                data_send.submit_avg = a;
                printf("Submitted Avg reveived is %d\n",data_send.submit_avg);
            }
                

        }
        


        pthread_create(&thread1, NULL,(void *) avg_thread,(void *) &data_send);
        sleep(3);
        pthread_create(&thread1, NULL,(void *) grade_thread,(void *) &data_send);
        pthread_join(thread1, NULL);
        pthread_join(thread2, NULL);

        printf("Array = {%d,%d,%d,%d}, AVG_CALC = %d\t Submitted Avg = %d\t Final Mark = %d",data_send.grades[0],data_send.grades[1],data_send.grades[2],data_send.grades[3],data_send.calc_avg,data_send.submit_avg,data_send.grade);
			
		write(client_conn, (char)data_send.grade, sizeof(char));
		close(client_conn);
		printf("*********************************\n");
      }
        
    
    return 0;
}
    

void avg_thread(struct message * data_send)
{
    pthread_mutex_lock( & r3_mutex);
    data_send->calc_avg = data_send->grades[0]+ data_send->grades[1]+ data_send->grades[2]+ data_send->grades[3];
    data_send->calc_avg/=4;
    pthread_mutex_unlock( & r3_mutex);
    

}
void grade_thread(struct message *data_send)
{
    pthread_mutex_lock( & r3_mutex);
    int mark = data_send->calc_avg - data_send->submit_avg;
    if(mark < 0)
    {
        data_send->grade = 100 + mark;
    }
    else
    {
        data_send->grade = 100 - mark;
    }
    pthread_mutex_unlock( & r3_mutex);

}