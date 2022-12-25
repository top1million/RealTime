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
#include <math.h>
#define RAND_MAX 2147483647
int number_of_people;
int pick_random_customer(float[number_of_people][2], float);
void main(int argc, char const *argv[])
{
    number_of_people = 50;
    float customers_probablity[number_of_people][2];
    int turns[number_of_people];

    for (int i = 0; i < number_of_people; i++)
    {
        turns[i] = 0;
    }

    int players[number_of_people];
    for (int i = 0; i < number_of_people; i++)
    {
        players[i] = i + 5000;
    }

    for (int i = 0; i < number_of_people; i++)
    {
        float prob = (number_of_people - i) / (float)number_of_people;
        customers_probablity[i][0] = players[i];
        customers_probablity[i][1] = prob;
        printf("%f              %f \n", customers_probablity[i][0], customers_probablity[i][1]);
    }
    int cnt = number_of_people;
    int first = 1;
    srand(getpid());
    while (cnt > 0)
    {
        float random = (double)rand() / RAND_MAX;
        int x = pick_random_customer(customers_probablity, random);
        printf("%d \n", x);
        if (searchinArray(x, turns) == 0)
        {
            turns[first] = x;
            first++;
            cnt--;
        }
    }
    printf("TURNS 'n' PROBABILITY");
    for (int i = 0; i < number_of_people; i++)
    {
        printf("%d \n", turns[i]);
    }
}
int searchinArray(int x, int arr[number_of_people])
{
    for (int i = 0; i < number_of_people; i++)
    {
        if (arr[i] == x)
        {
            return 1;
        }
    }
    return 0;
}
int pick_random_customer(float customers_probablity[number_of_people][2], float random)
{
    // Generate a random number between 0 and 1
    // Loop through the elements in the array

    float sum = 0;
    for (int i = 0; i < number_of_people; i++)
    {

        // Check if the random number is within the probability range of this element
        sum += customers_probablity[i][1];
        if (random < sum)
        {
            // printf("%f \n",random);
            // If it is, select this element
            customers_probablity[i][1] = 0;
            return customers_probablity[i][0];
            break;
        }
    }
    return 0;
}