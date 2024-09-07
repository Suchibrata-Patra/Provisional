#include <stdio.h>
#include <stdlib.h>
long main(){
    system("clear");
    printf("\n The size of integer is : %d",sizeof( int));
    printf("\n The size of unsigned integer is : %d",sizeof(unsigned int));
    printf("\n The size of signed integer is : %d",sizeof(signed int));
    printf("\n The size of long integer is : %d",sizeof(long int));
    printf("\n The size of Character is : %d",sizeof(char));
    printf("\n The size of Signed Character is : %d",sizeof(signed char));
    printf("\n The size of float is : %d",sizeof(float));
    printf("\n The size of double is : %d",sizeof(double));
}