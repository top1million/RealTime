/*
 to run this code, write this command in the terminal:
    gcc proj2_op.c -lglut -lGLU -lGL -lm -o proj2_op
*/
#include "file.h"

pid_t pid, producer1, producer2, consumer;
OIM *oim;
Queue *mq, *fq, *iq1, *iq2, *iq3, *iq4;
Person *people;
Turn *turnsSHM;
innerHall *innerHallSHM;
Person peopleArray[maxSize];
int lenmq , lenfq, leniq1, leniq2, leniq3, leniq4;
int num_of_seats = 0;
int number_of_people = 0;
int male_queue, female_queue, inner_queue1, inner_queue2, inner_queue3, inner_queue4;
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>
#include <string.h>
#include <math.h>
#include <string.h>
#include <stdio.h>

#define Y1 0.45
#define Y2 0.55
// for string
void renderbitmap(float x, float y, void *font, char *string)
{
  char *c;
  glRasterPos2f(x, y);
  for (c = string; *c != '\0'; c++)
  {
    glutBitmapCharacter(font, *c);
  }
}
void renderbitmapInt(float x, float y, void *font, int num)
{
  char str[100];
  sprintf(str, "%d", num);
  char *c;
  glRasterPos2f(x, y);
  for (c = str; *c != '\0'; c++)
  {
    glutBitmapCharacter(font, *c);
  }
}

void display()
{
  while (1)
  {
    glClear(GL_COLOR_BUFFER_BIT);
    // ------------------------------------Females Queue-----------------------------------
    
    lenmq=queueLen(mq);
    lenfq=queueLen(fq);
    
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_POLYGON);
    glVertex2f( -0.9, 0.4);
    glVertex2f(-0.9, 0.5);
    glVertex2f(-0.6, 0.5);
    glVertex2f(-0.6, 0.4);
    glEnd();

    // ------------------------------------Males Queue------------------------------------
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_POLYGON);
    glVertex2f(-0.9, -0.4);
    glVertex2f(-0.9, -0.5);
    glVertex2f(-0.6, -0.5);
    glVertex2f(-0.6, -0.4);
    glEnd();

    // ------------------------------------ Sting1: Females Queue------------------------------------
    // Drwaing Stings on the window --> "Females Queue"
    glColor3f(1.0, 1.0, 1.0);
    glRasterPos2f(0.0, 0.0);
    renderbitmap(-0.9, 0.55, GLUT_BITMAP_9_BY_15, "Females Queue");
    glEnd();
    // ------------------------------------ Sting1: Females Queue------------------------------------
    // Drwaing Stings on the window --> "Females Queue"
    glColor3f(0.0, 0.0, 0.0);
    glRasterPos2f(0.0, 0.0);
    renderbitmapInt(-0.8, 0.44, GLUT_BITMAP_9_BY_15, lenmq);
    glEnd();
    // ------------------------------------ Sting2: Males Queue ------------------------------------
    // Drwaing Stings on the window --> "Males Queue"
    glColor3f(1.0, 1.0, 1.0);
    glRasterPos2f(0.0, 0.0);
    renderbitmap(-0.9, -0.35, GLUT_BITMAP_9_BY_15, "Males Queue");
    glEnd();

    glColor3f(0.0, 0.0, 0.0);
    glRasterPos2f(0.0, 0.0);
    renderbitmapInt(-0.8, -0.46, GLUT_BITMAP_9_BY_15, lenfq);
    glEnd();
    // ------------------------------------ Metal Detector--> Females -------------------------------
    // Set the drawing color
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_POLYGON);
    glVertex2f(-0.5, 0.65);
    glVertex2f(-0.5, 0.3);
    glVertex2f(-0.45, 0.3);
    glVertex2f(-0.45, 0.65);
    glEnd();

    // ------------------------------------ Metal Detector--> Males -------------------------------
    // Set the drawing color
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_POLYGON);
    glVertex2f(-0.5, -0.65);
    glVertex2f(-0.5, -0.3);
    glVertex2f(-0.45, -0.3);
    glVertex2f(-0.45, -0.65);
    glEnd();

    // ------------------------------------- Officer ----------------------------------------------
    glColor3f(1.0, 0.0, 0.0);
    glBegin(GL_POLYGON);
    glVertex2f(-0.4, -0.05);
    glVertex2f(-0.4, 0.05);
    glVertex2f(-0.35, 0.05);
    glVertex2f(-0.35, -0.05);
    glEnd();
    // ----------------------------------borders--------------------------------------------------

    // Begin drawing a line
    // UPPER LINE
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_LINES);
    glLineWidth(1.0);
    glVertex2f(-0.25, 0.65);
    glVertex2f(0.7, 0.65);
    glEnd();

    glColor3f(1.0, 1.0, 1.0);
    // LOWER LINE
    glBegin(GL_LINES);
    glLineWidth(1.0);
    glVertex2f(-0.25, -0.65);
    glVertex2f(0.7, -0.65);
    glEnd();

    // RIGHT LINE
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_LINES);
    glLineWidth(1.0);
    glVertex2f(-0.25, 0.65);
    glVertex2f(-0.25, -0.65);
    glEnd();

    // LEFT LINE
    glColor3f(1.0, 1.0, 1.0);
    glBegin(GL_LINES);
    glLineWidth(1.0);
    glVertex2f(0.7, 0.65);
    glVertex2f(0.7, -0.65);
    glEnd();

    // ------------------------------------ Seats ------------------------------------
    float x = 0.05;
    float count = 0;
    int num = 50;    // number of seats
    char string[20]; // char buffer

    glColor3f(1.0, 1.0, 1.0);
    glRasterPos2f(2.0, 1.5);
    for (float i = 1.0; i <= num; i += 1.0)
    {
      // sprintf(string, "%1.0f", i);

      if ((int)i % 18 == 0)
      {
        count += 0.1;
        x = 0.05;
      }
      glRectf(-0.25 + x, -0.1 - count, -0.22 + x, -0.15 - count); // x1, y1, x2, y2
      // renderbitmap((-0.30+ x ), -0.1*count, GLUT_BITMAP_9_BY_15,string); // this is for numbering  and generate numbers.
      x += 0.05;
    }
    glEnd();

    // ------------------------------------ Hall ------------------------------------
    glColor3f(1.0, 1.0, 1.0);
    glRasterPos2f(0.0, 0.0);
    renderbitmap(0.25, 0.7, GLUT_BITMAP_9_BY_15, "HALL");
    glEnd();

    //------------------------------------ Tellers ------------------------------------;
    float k = 0.1;
    float q = 0.0;
    for (float i = 0.0; i < 4.0; i += 1.0)
    {

      glColor3f(1.0, 0.0, 0.0);
      glBegin(GL_POLYGON);
      glVertex2f((-0.20 + k) + q, Y1);
      glVertex2f((-0.20 + k) + q, Y2);
      glVertex2f((-0.20 + 2 * k), Y2);
      glVertex2f((-0.20 + 2 * k), Y1);
      glEnd();
      k += 0.1;
      q += 0.1;
    }

    glutSwapBuffers();
    sleep(2);
  }
}

// Main function
void main(int argc, char *argv[])
{
  pid_t ppid = getpid(); // get the parent process id
  int shmid, shmid1, shmid2, shmid3;
  number_of_people = toint(argv[1]);
  int size = sizeof(Person) * number_of_people;
  int size1 = sizeof(Turn) * number_of_people;

  if (argc != 2)
  { /* check if the user entered the correct number of arguments */
    printf("Invalid arguments: %d\n", argc);
    exit(-1);
  }
  if ((shmid = shmget((int)ppid, sizeof(OIM), IPC_CREAT | 0666)) != -1)
  { // size of the shared memory is the size of the struct which

    if ((oim = shmat(shmid, 0, 0)) == (char *)-1)
    {
      perror("problem with shmat");
      exit(1);
    }
  }
  else
  {
    perror("problem with shmget");
    exit(2);
  }
  if ((shmid1 = shmget((int)ppid + 1, size, IPC_CREAT | 0666)) != -1)
  { // size of the shared memory is the size of the struct which

    if ((people = (Person *)shmat(shmid1, 0, 0)) == (char *)-1)
    {
      perror("problem with shmat");
      exit(1);
    }
  }
  else
  {
    perror("problem with shmget");
    exit(2);
  }
  if ((shmid2 = shmget((int)ppid + 2, size1, IPC_CREAT | 0666)) != -1)
  { // size of the shared memory is the size of the struct which

    if ((turnsSHM = (Turn *)shmat(shmid2, 0, 0)) == (char *)-1)
    {
      perror("problem with shmat");
      exit(1);
    }
  }
  else
  {
    perror("problem with shmget");
    exit(2);
  }
  if ((shmid3 = shmget((int)ppid + 3, sizeof(innerHall), IPC_CREAT | 0666)) != -1)
  { // size of the shared memory is the size of the struct which

    if ((innerHallSHM = shmat(shmid3, 0, 0)) == (char *)-1)
    {
      perror("problem with shmat");
      exit(1);
    }
  }
  else
  {
    perror("problem with shmget");
    exit(2);
  }
  mq = &oim->male_queue;
  fq = &oim->female_queue;
  iq1 = &innerHallSHM->tellerOneQueue;
  iq2 = &innerHallSHM->tellerTwoQueue;
  iq3 = &innerHallSHM->tellerThreeQueue;
  iq4 = &innerHallSHM->tellerFourQueue;

  // Initialize GLUT
  glutInit(&argc, argv);
  // Set the window size and display mode
  glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE);

  // Set the window size and position
  glutInitWindowSize(1300, 600);
  glutInitWindowPosition(-100, 100);

  // Create the window
  glutCreateWindow("Project 2");

  // Register the display function
  srand(getpid());

  glutDisplayFunc(display);

  // Enter the rendering loop
  glutMainLoop();
 

}

int toint(char str[])
{
  int len = strlen(str);
  int i, num = 0;
  for (i = 0; i < len; i++)
  {
    num = num + ((str[len - (i + 1)] - '0') * pow(10, i));
  }
  return num;
}