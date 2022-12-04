// draw a circle using OpenGL commands
#include <GL/glut.h>
#include <math.h>

// Initialize OpenGL Graphics
void initGL() 
{
    // Set "clearing" or background color
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black and opaque
}
// Callback handler for window re-paint event
void display() 
{
    glClear(GL_COLOR_BUFFER_BIT); // Clear the color buffer with current clearing color
    glColor3f(0.0f, 0.0f, 1.0f); // Blue
    glBegin(GL_LINE_LOOP);

    for (int i = 0; i < 1000; i++) {
        float theta = 2.0f * 3.1415926f * (float)(i) / (float)(1000); //get the current angle
        float x = 0.02 * cosf(theta);//calculate the x component
        float y = 0.02 * sinf(theta);//calculate the y component
        glVertex2f(x, y);//output vertex
    }
    glEnd();
    glFlush(); // Render now
}

int main(int argc, char** argv)
{
    //for ( int i = 0 ; i < 2 ; i++)
    // { 
    glutInit(&argc, argv); // Initialize GLUT
    glutCreateWindow("cycle Test"); // Create a window with the given title
    glutDisplayFunc(display); // Register display callback handler for window re-paint
    initGL(); // Our own OpenGL initialization
    glutMainLoop(); // Enter the event-processing loop
   // }

    return 0;
}
