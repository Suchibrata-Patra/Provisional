#include <stdio.h>
#include <stdlib.h>

int main() {
    system("clear");
    int arr[5] = {1, 2, 3, 4, 5};
    int *parr = &arr[0], i;

    // Adjust the loop to avoid out-of-bounds access
    for (i = 0; i < 5; i++) {
        printf("%d ", *parr);  // Dereference the pointer to get the value
        parr++;                 // Move the pointer to the next element
    }

    printf("\n");
    return 0;
}
 