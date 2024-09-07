#include <stdio.h>
#include <stdlib.h>

void sum(int *a , int *b , int*t){
    *t = *a + *b;
}

int main(){
    system("clear");
    int num1 , num2 , total;
    num1 = 12; 
    num2 = 27;
    int *pnum1 = &num1 , *pnum2 = &num2 , *ptotal = &total;
    sum(&num1,&num2,&total);
    printf("%d",total);
    return 0;
}