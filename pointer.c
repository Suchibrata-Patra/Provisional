#include <stdio.h>
#include <stdlib.h>

int main(){
    system("clear");
    int num,*pnum;
    num = 10;
    pnum = &num;
    printf("num = %d\n",num);
    printf("pnum = %u\n",pnum);
    printf("*pnum = %d\n",*pnum);
} 