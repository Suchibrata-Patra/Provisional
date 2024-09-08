#include <stdio.h>
#include <stdlib.h>


int main(){
    system("clear");
    struct student{
        int roll_no;
        char name[80];
        float fees;
        char DOB[80];
    }stud1;
    printf("Enter the roll no. :");
    scanf("%d",&stud1.roll_no);
    
    printf("Enter the Name :");
    scanf("%s", stud1.name);

    printf("Enter the Fees :");
    scanf("%f",&stud1.fees);

    printf("Enter the DOB :");
    scanf("%s", stud1.DOB);


    /// Printig the Informations entered 

    printf("Entered Informations are as Follows :");
    printf("Roll No : %d\n",stud1.roll_no);
    printf("Name : %s\n",stud1.name);
    printf("Fees : %f\n",stud1.fees);
    printf("DOB : %s\n",stud1.DOB);

    return 0;
}