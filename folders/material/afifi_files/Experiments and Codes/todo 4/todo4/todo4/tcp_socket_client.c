#include <arpa/inet.h>  // for inet_addr()
#include <stdio.h>
#include <stdlib.h>
#include <string.h>      //for using memset
#include <sys/socket.h>  //for sock()
#include <unistd.h>      //for using write() function

struct msg_buffer {
    int pid;
    int a[4];
    int avg;
    int generated_avg;
    int grade;
} msg;

int main() {
    char data_received[1024];
    int sock = 0;
    struct sockaddr_in ServerIp;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
        printf(" socket creation failed ");

    ServerIp.sin_family = AF_INET;
    ServerIp.sin_port = htons(9090);
    ServerIp.sin_addr.s_addr = inet_addr("127.0.0.1");

    if ((connect(sock, (struct sockaddr *)&ServerIp, sizeof(ServerIp))) == -1) {
        perror("error");
        exit(0);
    } else {
        printf("[Client%d]          connected to the socket\n", getpid());
        fflush(stdout);
    }
    srand(time(NULL) % getpid());

    msg.pid = getpid();
    msg.avg = msg.grade = -1;  // default values.
    msg.generated_avg = (rand() % 100) + 10;
    while (msg.generated_avg > 99) {
        msg.generated_avg--;
    }
    for (int i = 0; i < 4; i++) {
        msg.a[i] = (rand() % 100) + 10;
        while (msg.a[i] > 99) {
            msg.a[i]--;
        }
        printf("%d  ", msg.a[i]);
        fflush(stdout);
    }
    printf("\n");
    fflush(stdout);

    send(sock, &msg, sizeof(msg), 0);

    printf("[Student%d]          is waiting for instructor response.\n",
           getpid());
    fflush(stdout);

    if (recv(sock, &msg, sizeof(msg), 0) == -1) {
        printf("Error, no response\n");
        fflush(stdout);
    } else {
        printf(
            "[Student%d]          got (avg = %d, grade = %d) from "
            "instructor.\n\n\n",
            getpid(), msg.avg, msg.grade);
        fflush(stdout);
        close(sock);
    }
}
