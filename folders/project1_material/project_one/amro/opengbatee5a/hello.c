#include <GL/gl.h>
#include <GL/glut.h>

#define drawOneLine(x1,y1,x2,y2)  glBegin(GL_LINES);  \
   glVertex2f ((x1),(y1)); glVertex2f ((x2),(y2)); glEnd();

void init(void) 
{
   glClearColor (0.0, 0.0, 0.0, 0.0);
   glShadeModel (GL_FLAT);
}

void display(void)
{
   int i;

   glClear (GL_COLOR_BUFFER_BIT);
/* select white for all lines  */
   glColor3f (1.0, 1.0, 1.0);

/* in 1st row, 3 lines, each with a different stipple  */
   glEnable (GL_LINE_STIPPLE);
   
   glLineWidth (10.0);
   glLineStipple (1, 0x00FF);    /* ST 1 */
   drawOneLine (50.0, 125.0, 150.0, 125.0);
   glLineStipple (1, 0x00FF);    /* ST 2 */
   drawOneLine (250.0, 125.0, 350.0, 125.0);
   glLineStipple (1, 0x00FF);   /*  ST 3 */
   drawOneLine (450.0, 125.0, 550.0, 125.0);
   glLineStipple (1, 0x00FF);   /* ST 4 */
   drawOneLine (650.0, 125.0, 750.0, 125.0);
   glLineStipple (1, 0x00FF);   /* ST 5 */
   drawOneLine (850.0, 125.0, 950.0, 125.0);

   for (i = 0; i < 7; i++)
      glVertex2f (50.0 + ((GLfloat) i * 50.0), 75.0);
   glEnd ();

   glDisable (GL_LINE_STIPPLE);
   glFlush ();
}

void reshape (int w, int h)
{
   glViewport (0, 0, (GLsizei) w, (GLsizei) h);
   glMatrixMode (GL_PROJECTION);
   glLoadIdentity ();
   gluOrtho2D (0.0, (GLdouble) w, 0.0, (GLdouble) h);
}
int main(int argc, char** argv)
{
   glutInit(&argc, argv);
   glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
   glutInitWindowSize (1000, 150); 
   glutInitWindowPosition (100, 100);
   glutCreateWindow (argv[0]);
   init ();
   glutDisplayFunc(display); 
   glutReshapeFunc(reshape);
   glutMainLoop();
   return 0;
}
