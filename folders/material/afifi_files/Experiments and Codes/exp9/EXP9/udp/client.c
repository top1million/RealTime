/************* UDP CLIENT CODE *******************/
/*
	The client will type a message to be send to server, then the 
	server will upper all its chars, then it will return the message to the client.
*/
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main(){
  int fd, portNum, nBytes;
  char buffer[1024];

  /*Create UDP socket*/
  /*SOCK_DGRAM means UDP*/
  fd = socket(PF_INET, SOCK_DGRAM, 0);

  /*Configure settings in address struct*/
  struct sockaddr_in serverAddr;
  socklen_t addr_size;
  serverAddr.sin_family = AF_INET; // ipv4
  serverAddr.sin_port = htons(7891);//port
  serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");//localhost
  /*Initialize size variable to be used later on*/
  addr_size = sizeof(serverAddr);


  while(1){
    printf("Type a sentence to send to server:\n");
    fgets(buffer,1024,stdin); // read a message from the user and store in the "buffer" variable
    printf("You typed: %s",buffer);

    nBytes = strlen(buffer) + 1; // to include the null char
    
    /*Send message to server*/
    /*
     * Note that there is no need to make a connection with the server since udp is a connectionless.
     * Just we have to send the data to the address
    */
    sendto(fd, buffer, nBytes, 0, (struct sockaddr *)&serverAddr, addr_size);

    /*Receive message from server*/
    nBytes = recvfrom(fd, buffer, 1024, 0, NULL, NULL);

    printf("Received from server: %s\n",buffer);

  }

  return 0;
}