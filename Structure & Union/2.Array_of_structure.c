#include <stdio.h>
#include <stdlib.h>

int main(){
    system("clear");
    struct student
    {
        int roll_no;
        char name[80];
        int fees;
        char dob;
    }student[50];
    int no_of_students = 2;
    for(int i=0;i<=no_of_students;i++){
        printf("Enter Rollno:");
        scanf("%d",&student[i].roll_no);

        printf("Enter the name :");
        gets(student[i].name);


        printf("Enter the fees :");
        scanf("%d",&student[i].fees);

        printf("Enter the DOB");
        gets(student[i].dob);

        for(int j = 0 ; j<no_of_students;j++){
            printf("****** Details of Studnet %d ******* ",i+1);
            printf("Roll No :%d",student[i].roll_no);
            printf("Name : %s",student[i].name);
            printf("Fees :");
            puts(student[i].fees);
            printf("DOB :");
            puts(student[i].dob);
        }


    }
    
}