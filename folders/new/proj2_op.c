/*
 to run this code, write this command in the terminal:
    gcc proj2_op.c -lglut -lGLU -lGL -lm -o proj2_op
*/


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
void renderbitmap(float x, float y, void *font, char *string){
    char *c;
    glRasterPos2f(x, y);
    for(c=string; *c != '\0'; c++){
        glutBitmapCharacter(font, *c);
    }
}
void display()
{
  // ------------------------------------Females Queue-----------------------------------
 
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(GL_COLOR_BUFFER_BIT);
  glColor3f(1.0, 1.0, 1.0);
  glBegin(GL_POLYGON);
  glVertex2f(-0.9, 0.4);
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
  renderbitmap(-0.9, 0.55, GLUT_BITMAP_9_BY_15,"Females Queue");
  glEnd();

  // ------------------------------------ Sting2: Males Queue ------------------------------------
  // Drwaing Stings on the window --> "Males Queue"
  glColor3f(1.0, 1.0, 1.0);
  glRasterPos2f(0.0, 0.0);
  renderbitmap(-0.9, -0.35, GLUT_BITMAP_9_BY_15,"Males Queue");
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
  glVertex2f(-0.4,-0.05);
  glVertex2f(-0.4,0.05);
  glVertex2f(-0.35, 0.05);
  glVertex2f(-0.35, -0.05);
  glEnd();
  // ----------------------------------borders--------------------------------------------------
  
  // Begin drawing a line
  // UPPER LINE
  glColor3f(1.0, 1.0, 1.0);
  glBegin(GL_LINES);
  glLineWidth(1.0);
  glVertex2f(-0.25,0.65);
  glVertex2f(0.7, 0.65);
  glEnd();
 
  glColor3f(1.0, 1.0, 1.0);
   // LOWER LINE
  glBegin(GL_LINES);
  glLineWidth(1.0);
  glVertex2f(-0.25,-0.65);
  glVertex2f(0.7, -0.65);
  glEnd();

  // RIGHT LINE
  glColor3f(1.0, 1.0, 1.0);
  glBegin(GL_LINES);
  glLineWidth(1.0);
  glVertex2f(-0.25,0.65);
  glVertex2f(-0.25, -0.65);
  glEnd();

  // LEFT LINE
  glColor3f(1.0, 1.0, 1.0);
  glBegin(GL_LINES);
  glLineWidth(1.0);
  glVertex2f(0.7,0.65);
  glVertex2f(0.7, -0.65);
  glEnd();

  // ------------------------------------ Seats ------------------------------------
   float x = 0.05;
   float count = 0; 
   int num =  50; // number of seats
   char string[20]; // char buffer

   glColor3f(1.0, 1.0, 1.0);
   glRasterPos2f(2.0, 1.5);
   for (float i = 1.0; i <= num; i+=1.0)
   {
    // sprintf(string, "%1.0f", i);

    if ( (int)i % 18 == 0){
        count+= 0.1;
        x = 0.05;
    }
    glRectf(-0.25+x, -0.1-count, -0.22+x, -0.15-count);  // x1, y1, x2, y2
    //renderbitmap((-0.30+ x ), -0.1*count, GLUT_BITMAP_9_BY_15,string); // this is for numbering  and generate numbers. 
    x+= 0.05; 
   }
   glEnd();

  // ------------------------------------ Hall ------------------------------------
  glColor3f(1.0, 1.0, 1.0);
  glRasterPos2f(0.0, 0.0);
  renderbitmap(0.25, 0.7, GLUT_BITMAP_9_BY_15,"HALL");
  glEnd();

  //------------------------------------ Tellers ------------------------------------;
   float k =  0.1 ;
   float q = 0.0;
  for ( float i= 0.0 ; i < 4.0; i+=1.0)
  {

    glColor3f(1.0, 0.0, 0.0);
    glBegin(GL_POLYGON);
    glVertex2f((-0.20 + k )+q,Y1);  
    glVertex2f((-0.20 + k )+q,Y2);  
    glVertex2f((-0.20 + 2*k ), Y2); 
    glVertex2f((-0.20 + 2*k ), Y1); 
    glEnd();
    k+=0.1;
    q+=0.1;
  }

  glFlush();
  glutSwapBuffers();
}

// Main function
int main(int argc, char** argv)
{
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
  glutDisplayFunc(display);


  // Enter the rendering loop
  glutMainLoop();

  return 0;
}