#include <stdio.h>
#include <stdlib.h>
int main(){
    system("clear");
    float num1 , num2 , sum=0.0;
    float *pnum1 = &num1, *pnum2 = &num2, *psum = &sum;
    num1 = 10 ;
    num2 = 20;
    *psum = *pnum1+*pnum2;
    printf("%f",*psum);    
    printf("\n \n");
} 