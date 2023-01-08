/************* TCP CLIENT CODE *******************/

#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

int main(){
  int fd, portNum, nBytes2;
  char buffer[1024];
  struct sockaddr_in serverAddr;
  socklen_t addr_size;

  /*Create TCP socket*/
  fd = socket(AF_INET, SOCK_STREAM, 0);

  /*Configure settings in address struct*/
  serverAddr.sin_family = AF_INET;
  serverAddr.sin_port = htons(7887);
  serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");

  /*Initialize size variable to be used later on*/
  addr_size = sizeof(serverAddr);

  while(1){

    /*Send message to server*/
    if(connect(fd, (struct sockaddr*) &serverAddr, sizeof(serverAddr)) < 0) {
    	perror("connect"); 
        exit(1);
    }

    //assume only one client forever
    while(1){

      printf("Type a sentence to send to server:\n");
      fgets(buffer,1024,stdin);
      printf("You typed: %s",buffer);

      nBytes2 = strlen(buffer) + 1;

      int nbytes;
      /*Receive message from server*/
      if((nbytes = write(fd, buffer, nBytes2)) < 0) { // notice in "write" you have to specify the exact size of the data to be send
    		perror("write");
    		exit(1);
      }
      nbytes = read(fd, buffer, 1024); // notice in "read" you have to specify the max size of the data to be received
      printf("Received from server: %s\n",buffer);

    }
  }

  return 0;
}
