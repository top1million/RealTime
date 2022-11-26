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


int main()
{

    int sock=0;
	/* This struct is in 'netinet/in.h' to to handle internet addresses */
    struct sockaddr_in ServerIp;
    int server_conn = 0;
     
	/* Create TCP socket with address family IPv4 */
    if(	(sock = socket(AF_INET, SOCK_STREAM ,0 )) == -1 ){
		printf("Socket creation failed ");
		exit(1);
	}
    
    ServerIp.sin_family = AF_INET;
    ServerIp.sin_port = htons(9090);
    ServerIp.sin_addr . s_addr = inet_addr("127.0.0.1");	
    
    while(1)
    {
        /* Connect the local socket to the remote server socket */
        if((server_conn = connect( sock, (struct sockaddr *)&ServerIp, sizeof(ServerIp) )) == -1){
            printf("Connection to the socket failed\n");
            exit(1);
        }
        else
            printf("Connected to socket\n");
        
        struct message data_received;
        data_received.grades[0] = (rand()%(99 - 10 + 1)) + 10;
        data_received.grades[1] = (rand()%(99 - 10 + 1)) + 10;
        data_received.grades[2] = (rand()%(99 - 10 + 1)) + 10;
        data_received.grades[3] = (rand()%(99 - 10 + 1)) + 10;

        data_received.submit_avg = (rand()%(99 - 10 + 1)) + 10;
        for(int i =0; i < 5; i++)
        {
            if(i < 4)
            {
                write(server_conn,  (char)data_received.grades[i], sizeof(char));
                printf("Grade %d Sent %d",i+1,data_received.grades[i]);
            }
                
            else
            {
                write(server_conn, (char)data_received.submit_avg, sizeof(char));
                printf("Calculated Avg Sent %d",data_received.submit_avg);
            }
                
        }
		if(recv(sock, (char)data_received.grade, sizeof(char), 0 ) == -1){
            printf("Error !! cannot get response\n");
            exit(1);
        }
        else
            printf("\nGrade Received is : %d", data_received.grade);
    }
	
	/* Close the connection */
	close( sock );

}