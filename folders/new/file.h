#include "local.h"
FILE *fp;
char *line = NULL;
char *ptr;         // pointer to the string
char *delim = " "; // delimiter
char *endptr;      // pointer to the end of the string
size_t len = 0;    // length of the line
size_t rline;      // number of characters read
int count = 0;     // arguments counter
long int n = 0;    // number of people

void reading_file(FILE *fp)
{
  fp = fopen("args.txt", "r");
  if (fp == NULL)
  {
    printf("Unable to open file");
    exit(1);
  }
  while ((rline = getline(&line, &len, fp)) != -1)
  {
    if (strstr(line, "number_of_people") != NULL)
    {
      // Split the line using strtok function
      number_of_people = splitting(line, delim);
    }
    if (strstr(line, "number_of_femals") != NULL)
    {
      // Split the line using strtok function
      number_of_females = splitting(line, delim);
    }
    if (strstr(line, "number_of_males") != NULL)
    {
      // Split the line using strtok function
      number_of_males = splitting(line, delim);
    }
    if (strstr(line, "number_of_unserved_people") != NULL)
    {
      // Split the line using strtok function
      number_of_unserved_people = splitting(line, delim);
    }
    if (strstr(line, "queue_threshold") != NULL)
    {
      // Split the line using strtok function
      queue_threshold = splitting(line, delim);
    }
    if (strstr(line, "time_inside_the_detector_m") != NULL)
    {
      // Split the line using strtok function
      time_inside_the_detector_m = splitting(line, delim);
    }
    if (strstr(line, "time_inside_the_detector_f") != NULL)
    {
      // Split the line using strtok function
      time_inside_the_detector_f = splitting(line, delim);
    }
    if (strstr(line, "number_of_tellers") != NULL)
    {
      // Split the line using strtok function
      number_of_tellers = splitting(line, delim);
    }
    if (strstr(line, "number_of_unhappy_people") != NULL)
    {
      // Split the line using strtok function
      number_of_unhappy_people = splitting(line, delim);
    }
    if (strstr(line, "number_of_satisfied_people") != NULL)
    {
      // Split the line using strtok function
      number_of_satisfied_people = splitting(line, delim);
    }
    if (strstr(line, "gate_openning_time") != NULL)
    {
      // Split the line using strtok function
      gate_openning_time = splitting(line, delim);
    }
  }

  fclose(fp);
}

/*
 * Splitting function
 */

int splitting(char *line, char *delim)
{

  ptr = strtok(line, delim);
  while (ptr != NULL)
  {
    if (count == 1)
    {
      n = strtol(ptr, &endptr, 10); // convert string to long int
    }
    count++;
    ptr = strtok(NULL, delim);
  }
  count = 0;
  return (int)n; // return the number of people as int
}

/*
 * validate_values function
 */
int validate_values(int number_of_people, int number_of_females, int number_of_males, int number_of_unserved_people, int number_of_unhappy_people, int number_of_satisfied_people)
{
  if (number_of_people < number_of_females + number_of_males || number_of_people > number_of_females + number_of_males)
  {
    printf("Unvalid numbers of people\n");
    return 0;
  }
  if (number_of_unserved_people > number_of_people || number_of_satisfied_people > number_of_people || number_of_unhappy_people > number_of_people)
  {
    printf("Unvalid numbers of unserved people or unhappy people or satisfied people\n");
    return 0;
  }
  if (number_of_people < number_of_unserved_people + number_of_satisfied_people + number_of_unhappy_people)
  {
    printf("Unvalid numbers of people\n");
    return 0;
  }
  return 1;
}