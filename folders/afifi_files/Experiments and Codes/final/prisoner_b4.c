#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/shm.h>
#include <wait.h>
#include <signal.h>
#include <pthread.h>  
#include <errno.h>
#include <sys/msg.h>

typedef struct {
    long messageType;
    int senderId;
    int strength;
    char confirmation_message; // 'y' or 'n': it is 'y' when we want to confirm to the previous process or the one we came on top of it that we passed them (see final.txt), otherwise we are sending information so it will be 'n'
} Message;


int q_id;


int main(int argc, char *argv[])
{
    
    int prisoners_pids[10];
    //message queue
    q_id = msgget(IPC_PRIVATE, 0666 | IPC_CREAT);
    //also message queue
    if (q_id < 0)
    {
        perror("Creating queue id");
    }

    for (int i = 0; i < 10; i++)
    {
        if ((prisoners_pids[i] = fork()) < 0)
        {
            perror("fork Passenger error in loop\n");
            return 1;
        }
        //*Fighters
        else if (prisoners_pids[0] == 0)
        {
            int strength = rand() % 10 + 1;
            //get the id from the outer loop
            int id = i;
            //create message
            struct Message msg;
            for(int j = 0; j < 10; j++)
            {
                if (j == id)
                    continue;
                msg.senderId = id;
                msg.strength = strength;
                msg.messageType = j+1;
                msg.confirmation_message = 'n';
                msgsnd(q_id, &msg, sizeof(msg), 0);
            }
            //now receive the 9 messages. sort then in an array based on their strength and in case of conflict based on their ID
            int strengths[10];
            strengths[id] = strength;
            for(int j = 0; j < 9; j++)
            {
                struct Message msg;
                msgrcv(q_id, &msg, sizeof(msg), id+1, 0);
                strengths[msg.senderId] = msg.strength;
            }
            //check to see if your strength is one of the strongest 4 strengths
            int strongest_strengths[4];
            int strongest_strength = 0;
            int max_strength;
            int max_strength_id;
            for(int j = 0; j < 4; j++){
                for(int j = 0; j < 10; j++)
                {
                    if (strengths[j] > max_strength)
                    {
                        max_strength = strengths[j];
                        max_strength_id = j;
                    }
                }
                strongest_strengths[j] = max_strength;
                max_strength = 0;
            }

            //usually we will check to see if we are ones of the next 3 but lets assume we are of the strongest 4.

            //if we were the highest ID of the strongest 4, then we go first, otherwise wait for the ID of the one with Higher ID from US
            //loop across IDs and see if we had the highest ID
            int highest_id = 0;
            for(int j = 0; j < 4; j++)
            {
                if (id == strongest_strengths[j])
                {
                    highest_id = 1;
                    break;
                }
            }
            if (highest_id)
            {
                printf("I am the strongest fighter, I will go first\n");
                //see what id is the next highest id
                int next_highest_id = 0;
                for(int j = 0; j < 4; j++)
                {
                    if (id == strongest_strengths[j])
                    {
                        next_highest_id = strongest_strengths[j+1];
                        break;
                    }
                }
                msg.senderId = id;
                msg.strength = strength;
                msg.messageType = next_highest_id+1;
                msg.confirmation_message = 'y';
                msgsnd(q_id, &msg, sizeof(msg), 0);
            }
            else{
                //wait for the message to go
                struct Message msg;
                msgrcv(q_id, &msg, sizeof(msg), id+1, 0);
                //now wait for the next message to go to indicate that someone climbed us, then send back to the one above us
                msgrcv(q_id, &msg, sizeof(msg), id+1, 0);
                msg.senderId = id;
                msg.strength = strength;
                //in here the message id should be of the strongest of B2 but now we don't have time to do it.
                msg.messageType = msg.senderId+1;
                msg.confirmation_message = 'y';
                msgsnd(q_id, &msg, sizeof(msg), 0);
            }
        }
}