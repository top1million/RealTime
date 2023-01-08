#include "local.h"
int qid;
player_t players[NUMBER_OF_PLAYERS];
int main(int argc, char *argv[])
{
    set_values();
    //message queue
    //message queue of NUMBER_OF_PLAYERS + 1 is the referee
    qid = msgget(IPC_PRIVATE, 0666 | IPC_CREAT);
    //also message queue
    if (qid < 0)
    {
        perror("Creating queue id");
    }
    //semaphore
    int sem_mem = semget(IPC_PRIVATE, NUMBER_OF_CATS, 0666 | IPC_CREAT);
    if (sem_mem < 0)
    {
        perror("semget hall");
        exit(11);
    }
    union semun loc;
    loc.val = 1;
    if (semctl(sem_mem, 0, SETVAL, loc) < 0)
    {
        perror("semctl");
        exit(12);
    }
    //creating all threads
    pthread_t players[NUMBER_OF_PLAYERS];
    //mutex for everything he does, he also can't do 2 stuff at a time
    pthread_mutex_t local_mutex = PTHREAD_MUTEX_INITIALIZER;
    for (int i = 0; i < NUMBER_OF_PLAYERS; i++)
    {
        int *current_player = (int*)malloc(sizeof(int));
        *current_player = i;
        if (pthread_create(&players[i], NULL, &player_function, current_player) != 0)
        {
            perror("Failed to create a player thread");
        }
        
    }
        
    
}

void set_values()
{
    srand(time(NULL));
    for(int i = 0; i< NUMBER_OF_PLAYERS; i++)
    {
        players[i].current_location[0] = rand() % (X_TILES * Y_TILES);
        players[i].player_id = i;
        for (int j =0; j< NUMBER_OF_CAT_TYPES; j++)
        {
            players[i].remaining_cats[j] = 5-j;
        }
        players[i].current_cat = 0;
        players[i].current_location[1] = rand() % (X_TILES * Y_TILES);
        
    }
}

void *player_function(void *arg)
{
    int current_player = *(int *)arg;
    while (1)
    {
        message current_coordinates;
        players[current_player].current_location[0] = players[current_player].current_location[0] + (rand()%2)*-1*((rand()%2)?1 : -1);
        players[current_player].current_location[1] = players[current_player].current_location[1] + (rand()%2)*-1*((rand()%2)?1 : -1);
        if(players[current_player].current_location[0] > X_TILES)
        {
            players[current_player].current_location[0] - 4;
        }
        else if(players[current_player].current_location[0] < X_TILES)
        {
            players[current_player].current_location[0] + 3;
        }
        if(players[current_player].current_location[1] > Y_TILES)
        {
            players[current_player].current_location[1] - 6;
        }
        else if(players[current_player].current_location[1] < Y_TILES)
        {
            players[current_player].current_location[1] + 6;
        }
        current_coordinates.mesg_text[0] = players[current_player].current_location[0];
        current_coordinates.mesg_text[1] = players[current_player].current_location[1];
        current_coordinates.mesg_type = NUMBER_OF_PLAYERS + 1;
        msgsnd(qid, &current_coordinates, sizeof(message), IPC_NOWAIT);
        msgrcv(qid, &current_coordinates, sizeof(message), current_player, 0);
        players[current_player].score += current_coordinates.mesg_text[2];
        players[current_player].remaining_cats[players[current_player].current_cat]--;
        if(players[current_player].remaining_cats[players[current_player].current_cat] ==0)
        {
            players[current_player].current_cat++;
        }
    }
    free(arg);
}