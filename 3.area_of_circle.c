#include <stdio.h>
#include <stdlib.h>
int main(){
    system("clear");
    float radius = 1, area = 0;
    float *pradius = &radius, *parea = &area;
    *parea = 3.14 * (*pradius) * (*pradius);
    printf("Area = %f", *parea);
    printf("\n\n");
}
 