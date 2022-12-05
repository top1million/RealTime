// program to draw a point using opengl functions 
#include <GL/glut.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>

int x = 1.0;
int y = 1.0;

void init(void) 
{
   glClearColor (0.0, 0.0, 0.0, 0.0);
   glShadeModel (GL_FLAT);
}

void display(void)
{
   double team_one_player_one_x = 0.0;
   double team_one_player_one_y = 0.0;
   double team_one_player_two_x = 0.0;
   double team_one_player_two_y = 0.0;
   double team_one_player_three_x = 0.0;
   double team_one_player_three_y = 0.0;
   double team_one_player_four_x = 0.0;
   double team_one_player_four_y = 0.0;
   double team_one_player_five_x = 0.0;
   double team_one_player_five_y = 0.0;
   double team_two_player_one_x = 0.0;
   double team_two_player_one_y = 0.0;
   double team_two_player_two_x = 0.0;
   double team_two_player_two_y = 0.0;
   double team_two_player_three_x = 0.0;
   double team_two_player_three_y = 0.0;
   double team_two_player_four_x = 0.0;
   double team_two_player_four_y = 0.0;
   double team_two_player_five_x = 0.0;
   double team_two_player_five_y = 0.0;

   for(int i = 0; i < 20; i++){
      sleep(1);
      glClear (GL_COLOR_BUFFER_BIT);
      glPointSize(20);
      glColor3f(0.0,0.0,1.0);
      glBegin(GL_POINTS);
      x = x + 0.1;
      y = y + 0.1;
      glVertex2f(x,y);
      glEnd();


      display_station();
      display_team_one();
      display_team_two();
      glutSwapBuffers();
   }

}
void display_station(void){
   //create 4 dots in the middle of the screen
   glPointSize(100);
   glColor3f (1.0, 1.0, 1.0);
   glBegin(GL_POINTS);
   glVertex2f(-1.20, 0.30);   //mostleft
   glVertex2f(-0.70, 0.30);  //left
   glVertex2f(-0.20, 0.30);   //mid
   glVertex2f(0.30, 0.30);   //right
   glVertex2f(0.80, 0.30);   //most right
   glColor3f(1.0,0.0,1.0);
   glPointSize(300);
   glVertex2f(1.30, 0.30);   //Goal
   glEnd();
}
void display_team_one(void){
   //team One   
   glPointSize(20);
   glColor3f (1.0, 0.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(-0.05, 1.50); //top
   glVertex2f(1.10, 0.30); //right
   glVertex2f(-1.20, 0.30); //left
   glVertex2f(0.70, -1.30); //bottom right
   glVertex2f(-0.70, -1.30); //bottom left
   glEnd();

}
void display_team_two(void){
      //team Two
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(0.05, 1.50); //top
   glVertex2f(1.20, 0.30); //right
   glVertex2f(-1.10, 0.30); //left
   glVertex2f(0.80, -1.30); //bottom right
   glVertex2f(-0.60, -1.30); //bottom left
   glEnd();

}


void reshape (int w, int h)
{
   glViewport (0, 0, (GLsizei) w, (GLsizei) h);
   glMatrixMode (GL_PROJECTION);
   glLoadIdentity ();
   gluOrtho2D (-2.0, 2.0, -2.0, 2.0);
   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();
}

int main(int argc, char** argv)
{
   // if(sigset(3, signal_catcher) == -1){  /* set the signal catcher for signal 3 */
   //      perror("Sigset can not set SIGQUIT");
   //      exit(SIGINT);
   //  }
   //  if(sigset(15,round_reset_func) == -1){  /* set the signal catcher for signal 15 */
   //      perror("Sigset can not set SIGTERM");
   //      exit(SIGINT);
   //  }
   glutInit(&argc, argv);
   glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
   glutInitWindowSize (1200, 700);
   glutInitWindowPosition (450, 150);
   glutCreateWindow (argv[0]);
   init ();
   glutDisplayFunc(display); 
   glutReshapeFunc(reshape);
   glutMainLoop();
   return 0;
}



// void team_one_player_one(void){
//    //player one
//    glPointSize(20);
//    glColor3f (0.0, 0.0, 1.0);
//    glBegin(GL_POINTS);
//    glVertex2f(0.0, 0.0); //top
//    glEnd();
//    glFlush();
// }
// void team_one_player_two(void){
//    //player two
//    glPointSize(20);
//    glColor3f (0.0, 0.0, 1.0);
//    glBegin(GL_POINTS);
//    glVertex2f(0.0, 0.0); //top
//    glEnd();
//    glFlush();
// }
// void team_one_player_three(void){
//    //player three
//    glPointSize(20);
//    glColor3f (0.0, 0.0, 1.0);
//    glBegin(GL_POINTS);
//    glVertex2f(0.0, 0.0); //top
//    glEnd();
//    glFlush();
// }
// void team_one_player_four(void){
//    //player four
//    glPointSize(20);
//    glColor3f (0.0, 0.0, 1.0);
//    glBegin(GL_POINTS);
//    glVertex2f(0.0, 0.0); //top
//    glEnd();
//    glFlush();
// }
// void team_one_player_five(void){
//    //player five
//    glPointSize(20);
//    glColor3f (0.0, 0.0, 1.0);
//    glBegin(GL_POINTS);
//    glVertex2f(0.0, 0.0); //top
//    glEnd();
//    glFlush();
// }