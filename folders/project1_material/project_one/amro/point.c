// program to draw a point using opengl functions 
#include <GL/glut.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>
#include <math.h>
#include <string.h>

void signal_catcher_team_one_speed_5(int);
void signal_catcher_team_one_speed_6(int);
void signal_catcher_team_one_speed_7(int);
void signal_catcher_team_one_speed_8(int);
void signal_catcher_team_one_speed_9(int);
void signal_catcher_team_two_speed_5(int); 
void signal_catcher_team_two_speed_6(int);
void signal_catcher_team_two_speed_7(int);
void signal_catcher_team_two_speed_8(int);
void signal_catcher_team_two_speed_9(int);
void team_two_changer(int);
void team_one_changer(int);
int team_one_player = 1;
int team_two_player = 1;
int rounds = 0 ;
double team_one_player_one_x = -1.25;
double team_one_player_one_y = 0.40;
double team_one_player_two_x = -0.75;
double team_one_player_two_y = 0.40;
double team_one_player_three_x = -0.25;
double team_one_player_three_y = 0.40;
double team_one_player_four_x = 0.25;
double team_one_player_four_y =0.40;
double team_one_player_five_x = 0.75;
double team_one_player_five_y = 0.40;
double team_two_player_one_x = -1.25;
double team_two_player_one_y = 0.25;
double team_two_player_two_x = -0.75;
double team_two_player_two_y = 0.25;
double team_two_player_three_x = -0.25;
double team_two_player_three_y = 0.25;
double team_two_player_four_x = 0.25;
double team_two_player_four_y = 0.25;
double team_two_player_five_x = 0.75;
double team_two_player_five_y = 0.25;

void init(void) 
{
   glClearColor (0.0, 0.0, 0.0, 0.0);
   glShadeModel (GL_FLAT);
}
void display(void)
{

   while(1){
      glClear (GL_COLOR_BUFFER_BIT);   
      display_station();
      display_team_one();
      display_team_two();
      glutSwapBuffers();
   }

}
void display_station(void){
   //create 4 dots in the middle of the screen
   glPointSize(65);
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
   team_one_player_one();
   team_one_player_two();
   team_one_player_three();
   team_one_player_four();
   team_one_player_five();
   glEnd();

}
void display_team_two(void){
      //team Two
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   team_two_player_one();
   team_two_player_two();
   team_two_player_three();
   team_two_player_four();
   team_two_player_five();
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

   if(sigset(20, signal_catcher_team_one_speed_5) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(21, signal_catcher_team_one_speed_6) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(22, signal_catcher_team_one_speed_7) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(23, signal_catcher_team_one_speed_8) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(24, signal_catcher_team_one_speed_9) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(25, signal_catcher_team_two_speed_5) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(26, signal_catcher_team_two_speed_6) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(27, signal_catcher_team_two_speed_7) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(28, signal_catcher_team_two_speed_8) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(29, signal_catcher_team_two_speed_9) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(30, team_one_changer) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   if(sigset(31, team_two_changer) == -1){  /* set the signal catcher for signal 3 */
         perror("Sigset can not set SIGQUIT");
         exit(SIGINT);
      }
   // rounds = toint(argv[0]);

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
void signal_catcher_team_one_speed_5(int sig){
   team_one_speed_maker(0.05);
}
void signal_catcher_team_one_speed_6(int sig){
   team_one_speed_maker(0.06);
}
void signal_catcher_team_one_speed_7(int sig){
   team_one_speed_maker(0.07);
}
void signal_catcher_team_one_speed_8(int sig){
   team_one_speed_maker(0.08);
}
void signal_catcher_team_one_speed_9(int sig){
   team_one_speed_maker(0.09);
}
void signal_catcher_team_two_speed_5(int sig){
   team_two_speed_maker(0.05);
}
void signal_catcher_team_two_speed_6(int sig){
   team_two_speed_maker(0.06);
}
void signal_catcher_team_two_speed_7(int sig){
   team_two_speed_maker(0.07);
}
void signal_catcher_team_two_speed_8(int sig){
   team_two_speed_maker(0.08);
}
void signal_catcher_team_two_speed_9(int sig){
   team_two_speed_maker(0.09);
}
void team_one_changer(int sig){
   if (team_one_player == 5){
      team_one_player = 1;
   }
   else{
      team_one_player++;
   }
}
void team_two_changer(int sig){
   if (team_two_player == 5){
      team_two_player = 1;
   }
   else{
      team_two_player++;
   }
}

void team_one_speed_maker(double speed){
   if(team_one_player == 1){
      if (team_one_player_one_x < -0.75){
         team_one_player_one_x += speed;      
         }
   }
   else if(team_one_player == 2){
      if(team_one_player_two_x < -0.25){
      team_one_player_two_x += speed;

      }
   }
   else if(team_one_player == 3){
      if(team_one_player_three_x < 0.25){
      team_one_player_three_x += speed;
      }
   }
   else if(team_one_player == 4){
      if(team_one_player_four_x < 0.75){
         team_one_player_four_x += speed;

      }
   }
   else if(team_one_player == 5){
      rounds -= 1;
      if(team_one_player_five_x < 1.25){
         team_one_player_five_x += speed;

      }
      else{
         reset_players();
      }
}

}
void team_two_speed_maker(double speed){
   if(team_two_player == 1){
      if (team_two_player_one_x < -0.75){
         team_two_player_one_x += speed;      }
   }
   else if(team_two_player == 2){
      if(team_two_player_two_x < -0.25){
      team_two_player_two_x += speed;

      }
   }
   else if(team_two_player == 3){
      if(team_two_player_three_x < 0.25){
      team_two_player_three_x += speed;
      }
   }
   else if(team_two_player == 4){
      if(team_two_player_four_x < 0.75){
         team_two_player_four_x += speed;

      }
   }
   else if(team_two_player == 5){
      rounds -= 1;
      if(team_two_player_five_x < 1.25){
         team_two_player_five_x += speed;

      }
      else{
         reset_players();
      }
}

}

void reset_players(){
   team_one_player_one_x = -1.25;
   team_one_player_two_x = -0.75;
   team_one_player_three_x = -0.25;
   team_one_player_four_x = 0.25;
   team_one_player_five_x = 0.75;
   team_one_player = 1;
   team_two_player_one_x= -1.25;
   team_two_player_two_x= -0.75;
   team_two_player_three_x= -0.25;
   team_two_player_four_x= 0.25;
   team_two_player_five_x= 0.75;
   team_two_player = 1;
}   



void team_one_player_one(int x,int y){
   glPointSize(20);
   glColor3f (1.0, 0.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_one_player_one_x, team_one_player_one_y); //top
   glEnd();
}
void team_one_player_two(void){
   glPointSize(20);
   glColor3f (1.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_one_player_two_x, team_one_player_two_y); //top
   glEnd();
}
void team_one_player_three(void){
   glPointSize(20);
   glColor3f (1.0, 0.0, 1.0);
   glBegin(GL_POINTS);
   glVertex2f(team_one_player_three_x, team_one_player_three_y); //top
   glEnd();
}
void team_one_player_four(void){
   glPointSize(20);
   glColor3f (0.0, 1.0,  1.0);
   glBegin(GL_POINTS);
   glVertex2f(team_one_player_four_x, team_one_player_four_y); //top
   glEnd();
}
void team_one_player_five(void){
   glPointSize(20);
   glColor3f (0.0, 0.0, 1.0);
   glBegin(GL_POINTS);
   glVertex2f(team_one_player_five_x, team_one_player_five_y); //top
   glEnd();
}
void team_two_player_one(void){
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_two_player_one_x, team_two_player_one_y); //top
   glEnd();
}
void team_two_player_two(void){
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_two_player_two_x, team_two_player_two_y); //top
   glEnd();
}
void team_two_player_three(void){
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_two_player_three_x, team_two_player_three_y); //top
   glEnd();
}
void team_two_player_four(void){
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_two_player_four_x, team_two_player_four_y); //top
   glEnd();
}
void team_two_player_five(void){
   glPointSize(20);
   glColor3f (0.0, 1.0, 0.0);
   glBegin(GL_POINTS);
   glVertex2f(team_two_player_five_x, team_two_player_five_y); //top
   glEnd();
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