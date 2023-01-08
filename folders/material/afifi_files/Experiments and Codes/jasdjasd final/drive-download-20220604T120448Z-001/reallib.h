#ifndef UNTITLED_SEMALIB_H
#define UNTITLED_SEMALIB_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/sem.h>
#include <sys/msg.h>
#include <sys/socket.h>

#include <signal.h>
#include <semaphore.h>
#include <pthread.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <arpa/inet.h>

/************************
 * Unnamed Pipes
 ************************ */
#define PIPE_BUFFER 100

typedef struct {
    int fileDescriptor[2];
    int readBytes;
    char readBuffer[PIPE_BUFFER];
} PipeStruct;

enum {
    PIPE_READ = 0, PIPE_WRITE = 1
};

PipeStruct *newPipeStruct();

void readFormPipe(PipeStruct *pipe);

void writeToPipe(PipeStruct *pipe, const char *toWrite);

void closeWritePipe(PipeStruct *pipe);

void closeReadPipe(PipeStruct *pipe);

/************************
 * FIFO
 ************************ */
#define FIFO_BUFFER 100
#define FIFO_DEFAULT_FILE "FIFO_DEFAULT"

typedef struct {
    FILE *filePtr;
    const char *fifoFile;
    char readBuffer[FIFO_BUFFER];
} FIFOStruct;

FIFOStruct *newFIFO(const char *fifoFile);

FIFOStruct *getFIFO(const char *fifoFile);

void readFromFIFO(FIFOStruct *fifo);

void writeToFIFO(FIFOStruct *fifo, const char *toWrite);

/************************
 * Message Queue
 ************************ */
#define MESSAGE_BUFFER 100

typedef enum {
    TYPE1 = 1, TYPE2 = 2
} MessageType;

typedef struct {
    long messageType;
    int senderId;
    char senderName[MESSAGE_BUFFER];
    char messageText[MESSAGE_BUFFER];
} Message;

typedef int MessageQueue;

MessageQueue newMessageQueue(key_t key);

void sendMessage(MessageQueue queue, Message *message);

void receiveMessage(MessageQueue queue, Message *message, long messageType);

void setMessage(Message *message, long messageType, int senderId, char *senderName, char *messageText);

void printMessage(Message message);

/************************
 * Shared Memory
 ************************ */
struct MEMORY {
    int firstInt;
    double secondDouble;
    bool thirdBoolean;
};

typedef struct {
    int sharedMemId;
    struct MEMORY *dataPtr;
    char *sharedMemPtr;
} SharedMemory;

SharedMemory *newSharedMemory(key_t key);

SharedMemory *getSharedMemory(key_t key);

void printSharedMemoryContents(struct MEMORY *memory);

/************************
 * Semaphores
 ************************ */
union semun {
    int val;
    struct semid_ds *buf;
    ushort *array;
};

enum {
    PRODUCER, CONSUMER
};

int initSemaphore(key_t key, int semNum, union semun semMap);

int getSemaphore(key_t key);

void sem_acquire(int semid, int toAcquire, int nsops);

void sem_release(int semid, int toRelease, int nsops);

void showSemSet(const char *prefix, int id, union semun arg, int semsNum);

/************************
 * TCP Socket
 ************************ */
#define DATA_MODEL_BUFFER 100
typedef struct {
    float cpuUsage;
    float memUsage;
    float dskUsage;
} InstantUsage;

typedef struct {
    int sockId;
    int clientConnection;
    int opt;
    bool isServer;
    struct sockaddr_in serverIP;
} TCPSocket;

InstantUsage *newDataModel(float cpu, float mem, float dsk);

void printDataModel(InstantUsage model);

TCPSocket *newTCPSocket(bool isServer);

void bindSocket(TCPSocket *tcpSocket);

void listenSocket(TCPSocket *tcpSocket);

void acceptSocket(TCPSocket *tcpSocket);

void connectSocket(TCPSocket *tcpSocket);

void writeSocket(TCPSocket *tcpSocket, InstantUsage *dataModel);

InstantUsage readSocket(TCPSocket *tcpSocket);

void closeSocket(TCPSocket *tcpSocket);

/************************
 * UDP Socket
 ************************ */
typedef struct {
    char firstId;
    char secondId;
    char name[DATA_MODEL_BUFFER];
} UDPDataModel;

typedef struct {
    int sockId;
    bool isServer;
    struct sockaddr_in serverInfo;
    struct sockaddr_in clientInfo;
} UDPSocket;

UDPSocket *newUDPSocket(bool isServer);

void sendUDP(UDPSocket *udpSocket, UDPDataModel *udpDataModel);

int receiveUDP(UDPSocket *udpSocket, UDPDataModel *udpDataModel);

#endif //UNTITLED_SEMALIB_H
