#include "input.h"

double input(const char* s)
{
   float x;
   printf("%s", s);
   scanf("%f", &x);
   return (x);
}
