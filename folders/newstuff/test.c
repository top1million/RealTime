#include <stdio.h>
#include <stdlib.h>

char* int_to_string(int num) {
  // Create a buffer to store the string
  char* buffer = malloc(sizeof(char) * 32);

  // Use sprintf to write the integer as a string to the buffer
  sprintf(buffer, "%d", num);

  // Return the buffer as a string
  return buffer;
}
int main() {
  int num = 123;
  char* str = int_to_string(num);
  printf("The string representation of %d is %s\n", num, str);
  free(str);
  return 0;
}
