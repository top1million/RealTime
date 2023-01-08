
/************* TCP SERVER CODE *******************/

#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <ctype.h>
#include <unistd.h>

int main() {
    int fd, nBytes;
    char buffer[1024];
    struct sockaddr_in serverAddr, clientAddr;
    socklen_t addr_size, client_addr_size;
    int i;

    /*Create UDP socket*/
    fd = socket(AF_INET, SOCK_STREAM, 0);

    /*Configure settings in address struct*/
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(7887);
    serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");
    // memset(serverAddr.sin_zero, '\0', sizeof serverAddr.sin_zero);

    /*Bind socket with address struct*/
    bind(fd, (struct sockaddr *) &serverAddr, sizeof(serverAddr));

    /*Initialize size variable to be used later on*/
    addr_size = sizeof(clientAddr);


    //Listen to max of 5 connections in the queue of requests
    if(listen(fd, 5) < 0) {
        perror("listen");
        exit(1);
    }


    while(1) {

        int newfd; /* returned by accept() */
        newfd = accept(fd, (struct sockaddr*) &clientAddr, &addr_size);
        if(newfd < 0) {
            perror("accept");
            exit(1);
        }

        //assume only one user(we can make threads)
        while(1) {
            if((nBytes = read(newfd, buffer, 1024)) < 0) {
                perror("read");
                exit(1);
            }
            printf("Message received: %s size of the message:%d\n",buffer ,nBytes);
            /*Convert message received to uppercase*/
            //<<<<<<<<<<<<<<<<<<<<<<there is error that nbBytes is 0 that returns here
            for(i=0; i<nBytes-1; i++) {
                buffer[i] = toupper(buffer[i]);
            }
            /*Send uppercase message back to client, using serverStorage as the address*/
            write(newfd,buffer,strlen(buffer) +1);
        }
    }

    return 0;
}
