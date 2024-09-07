#include <stdio.h>
#include <stdlib.h>

int main(){
    system("clear");
    int *pnum;
    char *pch;
    float *pfnum;
    double *pdnum;
    long *plnum;
    printf("\n Sixe of integer pointer = %d",sizeof(pnum));
    printf("\n Sixe of character pointer = %d",sizeof(pch));
    printf("\n Sixe of float pointer = %d",sizeof(pfnum));
    printf("\n Sixe of double pointer = %d",sizeof(pdnum));
    printf("\n Sixe of long pointer = %d",sizeof(plnum));
}