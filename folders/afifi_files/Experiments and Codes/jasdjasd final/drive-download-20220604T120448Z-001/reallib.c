#include "reallib.h"

/************************
 * Unnamed Pipes
 ************************ */
PipeStruct *newPipeStruct() {
    PipeStruct *pipePtr = (PipeStruct *) malloc(sizeof(PipeStruct));
    pipe(pipePtr->fileDescriptor);
    return pipePtr;
}

void readFormPipe(PipeStruct *pipe) {
    pipe->readBytes = read(pipe->fileDescriptor[PIPE_READ],
                           pipe->readBuffer, sizeof(pipe->readBuffer));
}

void writeToPipe(PipeStruct *pipe, const char *toWrite) {
    write(pipe->fileDescriptor[PIPE_WRITE], toWrite, sizeof(toWrite));
}

void closeWritePipe(PipeStruct *pipe) {
    close(pipe->fileDescriptor[PIPE_WRITE]);
}

void closeReadPipe(PipeStruct *pipe) {
    close(pipe->fileDescriptor[PIPE_READ]);
}

/************************
 * FIFO
 ************************ */

FIFOStruct *newFIFO(const char *fifoFile) {
    FIFOStruct *fifo = (FIFOStruct *) malloc(sizeof(FIFOStruct));
    fifo->fifoFile = fifoFile;
    mknod(fifo->fifoFile, S_IFIFO | 0666, 0);
    return fifo;
}

FIFOStruct *getFIFO(const char *fifoFile) {
    FIFOStruct *fifo = (FIFOStruct *) malloc(sizeof(FIFOStruct));
    fifo->fifoFile = fifoFile;
    return fifo;
}

void readFromFIFO(FIFOStruct *fifo) {
    fifo->filePtr = fopen(fifo->fifoFile, "r");
    fgets(fifo->readBuffer, FIFO_BUFFER, fifo->filePtr);
    fclose(fifo->filePtr);
}

void writeToFIFO(FIFOStruct *fifo, const char *toWrite) {
    fifo->filePtr = fopen(fifo->fifoFile, "w");
    fputs(toWrite, fifo->filePtr);
    fclose(fifo->filePtr);
}

/************************
 * Message Queue
 ************************ */
MessageQueue newMessageQueue(key_t key) {
    return msgget(key, 0666 | IPC_CREAT);
}

void sendMessage(MessageQueue queue, Message *message) {
    msgsnd(queue, message, sizeof(*message), 0);
}

void receiveMessage(MessageQueue queue, Message *message, long messageType) {
    msgrcv(queue, message, sizeof(*message), messageType, 0);
}

void setMessage(Message *message, long messageType, int senderId, char *senderName, char *messageText) {
    message->messageType = messageType;
    message->senderId = senderId;
    strcpy(message->senderName, senderName);
    strcpy(message->messageText, messageText);
}

void printMessage(Message message) {
    printf("\nMessage Contents:\n\t1. %s: %ld\n\t2. %s: %d\n\t3. %s: %s\n\t4. %s: %s\n\n",
           "Message Type", message.messageType,
           "Sender ID", message.senderId,
           "Sender Name", message.senderName,
           "Message Text", message.messageText);
}

/************************
 * Shared Memory
 ************************ */
SharedMemory *newSharedMemory(key_t key) {
    SharedMemory *sharedMemory = (SharedMemory *) malloc(sizeof(SharedMemory));
    sharedMemory->dataPtr = (struct MEMORY *) malloc(sizeof(struct MEMORY));
    if ((sharedMemory->sharedMemId = shmget(key, sizeof(*sharedMemory->dataPtr),
                                            IPC_CREAT | 0600)) != -1) {

        if ((sharedMemory->sharedMemPtr = (char *) shmat(sharedMemory->sharedMemId, 0, 0)) == (char *) -1) {
            perror("shmptr -- parent -- attach");
            exit(1);
        }
        memcpy(sharedMemory->sharedMemPtr, (char *) sharedMemory->dataPtr, sizeof(*sharedMemory->dataPtr));
        sharedMemory->dataPtr = (struct MEMORY *) sharedMemory->sharedMemPtr;
        sharedMemory->dataPtr->firstInt = 5;
        sharedMemory->dataPtr->secondDouble = 10.5;
        sharedMemory->dataPtr->thirdBoolean = true;

    } else {
        perror("shmid -- parent -- creation");
        exit(2);
    }

    return sharedMemory;
}

SharedMemory *getSharedMemory(key_t key) {
    SharedMemory *sharedMemory = (SharedMemory *) malloc(sizeof(SharedMemory));
    if ((sharedMemory->sharedMemId = shmget(key, 0, 0)) != -1) {
        if ((sharedMemory->sharedMemPtr = (char *) shmat(sharedMemory->sharedMemId, (char *) 0, 0))
            == (char *) -1) {
            perror("shmat -- attach");
            exit(1);
        }
        sharedMemory->dataPtr = (struct MEMORY *) sharedMemory->sharedMemPtr;
    } else {
        perror("shmget -- player -- access");
        exit(2);
    }
    return sharedMemory;
}

void printSharedMemoryContents(struct MEMORY *memory) {
    char *boolStr;
    if (memory->thirdBoolean) {
        boolStr = "True";
    } else {
        boolStr = "False";
    }
    printf("Shared Memory Contents: \n\t1. Int: %d\n\t2. Double: %f\n\t3. Boolean: %s\n\n",
           memory->firstInt, memory->secondDouble, boolStr);
}

/************************
 * Semaphores
 ************************ */
struct sembuf   acquire = {0, -1, SEM_UNDO},
                release = {0, 1, SEM_UNDO};

int initSemaphore(key_t key, int semNum, union semun semMap) {
    int semId;
    if ((semId = semget(key, semNum, IPC_CREAT | IPC_EXCL | 0660)) != -1) {
        if (semctl(semId, 0, SETALL, semMap) == -1) {
            perror("semctl -- initialization");
            exit(3);
        }
    } else {
        perror("semget - initialization");
        exit(1);
    }
    return semId;
}

int getSemaphore(key_t key) {
    int semId;
    if ((semId = semget(key, 0, IPC_EXCL | 0660)) == -1) {
        perror("semget: IPC_EXCL | 0660");
        exit(2);
    }
    return semId;
}

int getSemaphoreValue(int semId, int semNum) {
    return semctl(semId, semNum, GETVAL);
}

void sem_acquire(int semid, int toAcquire, int nsops) {
    acquire.sem_num = toAcquire;
    if (semop(semid, &acquire, nsops) == -1) {
        perror("semop -- acquire");
        exit(4);
    }
}

void sem_release(int semid, int toRelease, int nsops) {
    release.sem_num = toRelease;
    if (semop(semid, &release, nsops) == -1) {
        perror("semop -- release");
        exit(5);
    }
}

void showSemSet(const char *prefix, int id, union semun arg, int semsNum) {
    semctl(id, 0, GETALL, arg);
    printf("Semaphore Set - %s: ", prefix);
    for (int i = 0; i < semsNum; ++i)
        printf("%d ", arg.array[i]);
    printf("\n");
}

/************************
 * TCP Socket
 ************************ */
#define TCP_PORT 9090

InstantUsage *newDataModel(float cpu, float mem, float dsk) {
    InstantUsage *dataModel = (InstantUsage *) malloc(sizeof(InstantUsage));
    dataModel->cpuUsage = cpu;
    dataModel->cpuUsage = mem;
    dataModel->cpuUsage = dsk;
    return dataModel;
}

void printDataModel(InstantUsage model) {
    printf("InstantUsage Contents:\n\t1. %s: %f\n\t2. %s: %f\n\t3. %s: %f\n\n",
           "CPU Usage", model.cpuUsage,
           "Memory Usage", model.memUsage,
           "Disk Usage", model.dskUsage);
}

TCPSocket *newTCPSocket(bool isServer) {
    TCPSocket *tcpSocket = (TCPSocket *) malloc(sizeof(TCPSocket));
    tcpSocket->sockId = socket(AF_INET, SOCK_STREAM, 0);
    tcpSocket->opt = 1;
    tcpSocket->isServer = isServer;
    if (isServer) {
        memset(&tcpSocket->serverIP, '0', sizeof(tcpSocket->serverIP));
        if (setsockopt(tcpSocket->sockId, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT,
                       &tcpSocket->opt, sizeof(tcpSocket->opt))) {
            perror("setsockopt");
            exit(EXIT_FAILURE);
        }
    }
    tcpSocket->serverIP.sin_family = AF_INET;
    tcpSocket->serverIP.sin_port = htons(TCP_PORT);
    tcpSocket->serverIP.sin_addr.s_addr = inet_addr("127.0.0.1");
    return tcpSocket;
}

void bindSocket(TCPSocket *tcpSocket) {
    if (bind(tcpSocket->sockId, (struct sockaddr *) &tcpSocket->serverIP, sizeof(tcpSocket->serverIP)) == -1) {
        printf("\n Socket binding failed ");
    }
}

void listenSocket(TCPSocket *tcpSocket) {
    if (listen(tcpSocket->sockId, 20) == -1)
        printf("Error starting server.\n");
    else
        printf("\nServer started.\n");
}

void acceptSocket(TCPSocket *tcpSocket) {
    tcpSocket->clientConnection = accept(tcpSocket->sockId, (struct sockaddr *) NULL, NULL);
}

void connectSocket(TCPSocket *tcpSocket) {
    if ((connect(tcpSocket->sockId, (struct sockaddr *) &tcpSocket->serverIP, sizeof(tcpSocket->serverIP))) == -1) {
        printf("Error connecting to the socket.\n");
        exit(0);
    } else {
        printf("\nClient connected to socket.\n");
    }
}

void writeSocket(TCPSocket *tcpSocket, InstantUsage *dataModel) {
    write(tcpSocket->isServer ? tcpSocket->clientConnection : tcpSocket->sockId, dataModel, sizeof(*dataModel));
}

InstantUsage readSocket(TCPSocket *tcpSocket) {
    InstantUsage *result = newDataModel(0,0,0);
    if (read(tcpSocket->isServer ? tcpSocket->clientConnection : tcpSocket->sockId, result, sizeof(*result)) == -1) {
        printf("Error !! cannot get a response.\n");
    } else {
        printf("Response Received:\n");
        printDataModel(*result);
    }
    return *result;
}

void closeSocket(TCPSocket *tcpSocket) {
    close(tcpSocket->isServer ? tcpSocket->clientConnection : tcpSocket->sockId);
    free(tcpSocket);
}

/************************
 * UDP Socket
 ************************ */
#define UDP_PORT 8080

UDPSocket *newUDPSocket(bool isServer) {
    UDPSocket *udpSocket = (UDPSocket *) malloc(sizeof(UDPSocket));
    if ((udpSocket->sockId = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }
    udpSocket->isServer = isServer;
    memset(&udpSocket->serverInfo, 0, sizeof(udpSocket->serverInfo));
    if (isServer) {
        memset(&udpSocket->clientInfo, 0, sizeof(udpSocket->clientInfo));
    }

    // Filling server information
    udpSocket->serverInfo.sin_family = AF_INET; // IPv4
    udpSocket->serverInfo.sin_addr.s_addr = inet_addr("127.0.0.1");
    udpSocket->serverInfo.sin_port = htons(UDP_PORT);
    return udpSocket;
}

void bindUDPSocket(UDPSocket *udpSocket) {
    if (bind(udpSocket->sockId, (const struct sockaddr *) &udpSocket->serverInfo,
             sizeof(udpSocket->serverInfo)) < 0) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
}

void sendUDP(UDPSocket *udpSocket, UDPDataModel *udpDataModel) {
    sendto(udpSocket->sockId, (char *) udpDataModel, sizeof(*udpDataModel), MSG_CONFIRM,
           (const struct sockaddr *) (udpSocket->isServer ? &udpSocket->clientInfo : &udpSocket->serverInfo),
           sizeof(udpSocket->isServer ? udpSocket->clientInfo : udpSocket->serverInfo));
}

int receiveUDP(UDPSocket *udpSocket, UDPDataModel *udpDataModel) {
    int len = sizeof(udpSocket->isServer ? udpSocket->clientInfo : udpSocket->serverInfo);
    return recvfrom(udpSocket->sockId, (char *) udpDataModel, sizeof(*udpDataModel), MSG_WAITALL,
                    (struct sockaddr *) (udpSocket->isServer ? &udpSocket->clientInfo : &udpSocket->serverInfo),
                            &len);
}