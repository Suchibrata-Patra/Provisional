#include <stdio.h>
#include <stdlib.h>

int main() {
    system("clear");
    int arr[5] = {10, 20, 30, 40, 50};
    int *parr = arr;

    printf("Array elements using pointer:\n");
    for (int i = 0; i < 5; i++) {
        printf("%d ", *(parr + i));
    }

    printf("\n");

    printf("Array elements by incrementing the pointer:\n");
    for (int i = 0; i < 5; i++) {
        printf("%d ", *parr); 
        parr++;                
    }

    printf("\n");

    return 0;
}