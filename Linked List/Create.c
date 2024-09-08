#include <stdio.h>
#include <stdlib.h>

typedef struct record {
    int value;
    struct record *next;
} NODE;

void append(int data);
void display();
NODE *start = NULL;

int main() {
    system("clear"); // Optional: Can be removed for portability
    int prompt, data;
    printf("Enter '1' to enter data.\n");
    printf("Enter '0' to display data and exit.\n");

    do {
        printf("Enter the choice: ");
        scanf("%d", &prompt);
        if (prompt == 1) {
            printf("Enter the number: ");
            scanf("%d", &data);
            append(data);
        }
    } while (prompt != 0);

    display();
    return 0;
}

// Append function definition
void append(int data) {
    NODE *temp, *curr;
    temp = (NODE *)malloc(sizeof(NODE));
    temp->value = data;
    temp->next = NULL;

    if (start == NULL) {
        start = temp;
    } else {
        curr = start;
        while (curr->next != NULL) {
            curr = curr->next;
        }
        curr->next = temp; // Link the new node to the end
    }
}

// Display function definition
void display() {
    int count = 0;
    NODE *curr = start;
    printf("\nCurrent List:\n");
    while (curr != NULL) {
        printf("Data %d = %d\n", ++count, curr->value);
        curr = curr->next;
    }
}

