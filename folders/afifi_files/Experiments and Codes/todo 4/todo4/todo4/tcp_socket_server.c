#include <arpa/inet.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>

int _grade = 0;
int _avg = 0;

struct msg_buffer {
    int pid;
    int a[4];
    int avg;
    int generated_avg;
    int grade;
} msg;

// pthread_t thread_avg;
// pthread_t thread_grade;
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

void calc_avg(void *);
void calc_grade(void *);

struct arg_struct {
    struct msg_buffer data;
} * args;

int main() {
    int sock = 0, client_conn = 0;
    char data_send[1024];
    struct sockaddr_in ServerIp;
    int opt = 1;
    sock = socket(AF_INET, SOCK_STREAM, 0);
    memset(&ServerIp, '0', sizeof(ServerIp));
    if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt,
                   sizeof(opt))) {
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }

    ServerIp.sin_family = AF_INET;
    ServerIp.sin_port = htons(9090);
    ServerIp.sin_addr.s_addr = inet_addr("127.0.0.1");

    if (bind(sock, (struct sockaddr *)&ServerIp, sizeof(ServerIp)) == -1) {
        perror("Error");
        exit(1);
    }

    if (listen(sock, 20) == -1) {
        perror("Error");
        exit(1);
    } else {
        printf("Server wakes up\n");
        fflush(stdout);
    }

    while (1) {
        _avg = _grade = 0;
        
        sleep(5);
        printf("[Instructor]          is waiting for strudents.\n");
        fflush(stdout);

        client_conn = accept(sock, (struct sockaddr *)NULL, NULL);
        recv(client_conn, &msg, sizeof(msg), 0);

        args = malloc(sizeof(struct arg_struct) * 1);
        for (int i = 0; i < 4; i++) {
            printf("%d  ", msg.a[i]);
            fflush(stdout);
            args->data.a[i] = msg.a[i];
        }
        printf("\n");
        fflush(stdout);
        args->data.generated_avg = msg.generated_avg;
        args->data.pid = msg.pid;

        pthread_t thread_avg;
        pthread_t thread_grade;

        if (pthread_create(&thread_avg, NULL, (void *)calc_avg, args)) {
            perror("Error");
            exit(1);
        }
        if (pthread_create(&thread_grade, NULL, (void *)calc_grade, args)) {
            perror("Error");
            exit(1);
        }
        if (pthread_join(thread_avg, NULL)) {
            perror("Error");
            exit(1);
        }
        if (pthread_join(thread_grade, NULL)) {
            perror("Error");
            exit(1);
        }
        msg.avg = _avg;
        msg.grade = _grade;
        write(client_conn, &msg, sizeof(msg));
        printf(
            "[Instructor]          sent (avg = %d, generated_avg = %d, grade = %d) to student%d.\n\n\n",
            msg.avg, msg.generated_avg, msg.grade, msg.pid);
        close(client_conn);
    }

    return 0;
}

void calc_avg(void *arguments) {
    struct arg_struct *args = arguments;
    if (pthread_mutex_lock(&lock)) {
        perror("Error in mutex");
        exit(1);
    }

    for (int i = 0; i < 4; i++) {
        printf("%d  ", args->data.a[i]);
        fflush(stdout);
        _avg += args->data.a[i];
    }
    printf("\n");
    fflush(stdout);
    _avg /= 4;
    printf("[Thread_avg]          avg = %d\n", _avg);
    if (pthread_mutex_unlock(&lock)) {
        perror("Error in mutex");
        exit(1);
    }
    pthread_exit(NULL);
}

void calc_grade(void *arguments) {
    struct arg_struct *args = arguments;
    if (pthread_mutex_lock(&lock)) {
        perror("Error in mutex");
        exit(1);
    }
    _grade = 100 - abs(_avg - args->data.generated_avg);
    printf("[Thread_grade]        grade = %d\n", _grade);
    if (pthread_mutex_unlock(&lock)) {
        perror("Error in mutex");
        exit(1);
    }

    pthread_exit(NULL);
}
