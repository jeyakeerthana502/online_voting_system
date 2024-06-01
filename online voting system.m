#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
typedef struct voter_information
{
    char aadhar[20];
    char name[50];
    char birth_date[15];
    struct voter_information *next;
} node;

node *head;
node *space,*start=NULL;
node *search(char x[],char y[],char z[],node *,int *);
node *voter_insert(node *);
node *main_logs(node *);
void admin();
void winner();
void exi();
void voting();
void not_again();
void stop();
void show();


int count=0,R=3,vote=0;
int vote1=0,vote2=0,vote3=0,vote4=0,vote5=0;
int main()
{
while(1){


    printf("\n\n\n");
    printf("-------------------------------------------------------------------------------------------------------------\n\n");
    printf("\n");
    printf("\t\t\t\t** WELCOME TO JMG ONLINE VOTING PORTAL **\t\t\t\t\n\n");

    printf("-------------------------------------------------------------------------------------------------------------\n\n");
    printf("\n");
    printf("PRESS 1 FOR LOGGING INTO THE JMG VOTING SYSTEM");
    int BB;
    scanf("%d",&BB);
    if(BB==1)
    {
      start=  main_logs(start);
    }

}
    return 0;
}

node *main_logs(node *start)
{
    system("cls");
    printf("\n\n\n");
    printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!RULES TO BE FOLLOWED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    printf("\n");
    printf("\nIF YOUR CREDENTIALS MATCHES WITH THOSE IN THE VOTER LIST THEN ONLY YOU CAN GIVE YOUR VOTE \nOTHERWISE YOU CAN NOT\n");

    printf("\n\t\t\tSO PRESS THESE KEYS AS FOLLOWS:\n");
    printf("\n");
    printf("        \t\t\t1. FOR VOTE ENTRY     \n");
    Sleep(300);
    printf("        \t\t\t2. FOR ADMIN PANEL    \n");
    Sleep(300);
    printf("        \t\t\t3. FOR WINNER         \n");
    printf("\n\n\n\n");
    Sleep(500);
    printf("\n");
    printf("        \t\t\tENTER YOUR CHOICE:");
    int T;
    scanf("%d",&T);
    if(T==1)
    {
       start= voter_insert(start);
    }
    if(T==2)
    {
      admin();
    }
    if(T==3)
    {
      winner();
    }
    if(T!=1||T!=2||T!=3)
    {
    main_logs(start);
}


    return start;
}


node *voter_insert(node *start)
{
int UNIVERSAL=0;
int *z;
z = &UNIVERSAL;
     node *temp;
     char name[50],birth_date[15],aadhar[20];
     system("cls");
     printf("\n\n\n\n");
     printf("-----------------------------------------------------------------------------------------------------\n");
     printf("\n");
     printf("\n\t\t\t\tPOINTS TO BE REMEMBER BEFORE VOTING\t\t\t\t\t\t\n");
     printf("\n");
     printf("-----------------------------------------------------------------------------------------------------\n");
     printf("\n\n");
     printf("\t IF AADHAR ID, YOUR NAME AND YOUR DATE OF BIRTH MATCHES THEN YOU CAN GIVE YOUR VOTE OTHERWISE NOT\n\n");
     Sleep(300);
     printf("\t ID YOU DO WRONG %d TIMES, THE PORTAL WILL BE CLOSED AUTOMATICALLY\n\n\n",R);
     Sleep(300);
     printf("\t\t\tENTER YOUR LOGIN DETAILS\n");
     printf("\n");
     printf("\t\t\tEnter your AADHAR ID number                  :");
     gets(aadhar);
     gets(aadhar);
     printf("\t\t\tEnter Your NAME                              :");
     gets(name);
     printf("\t\t\tEnter Your BIRTH DATE  in dd-mm-yyyy format  :");
     gets(birth_date);
     temp=(node *)malloc(sizeof(node));
     strcpy(temp->aadhar,aadhar);
     strcpy(temp->name,name);
     strcpy(temp->birth_date,birth_date);
     temp->next=NULL;
     head=temp;
     while(temp!=NULL)
     {
         if((strcmp(temp->aadhar,"10001")==0&& strcmp(temp->name,"Muthu lakshmi")==0 &&strcmp(temp->birth_date,"23-12-2003")==0) ||
         (strcmp(temp->aadhar,"10002")==0&& strcmp(temp->name,"Jeyakeerthana")==0 &&strcmp(temp->birth_date,"12-08-2003")==0)||
         (strcmp(temp->aadhar,"10003")==0&& strcmp(temp->name,"Guruswathi")==0 &&strcmp(temp->birth_date,"19-09-2003")==0)||
         (strcmp(temp->aadhar,"10004")==0&& strcmp(temp->name,"Deepika")==0 &&strcmp(temp->birth_date,"05-05-2003")==0)||
         (strcmp(temp->aadhar,"10005")==0&& strcmp(temp->name,"Tamil Selvi")==0 &&strcmp(temp->birth_date,"20-09-2004")==0)||
         (strcmp(temp->aadhar,"10006")==0&& strcmp(temp->name,"Naseeha")==0 &&strcmp(temp->birth_date,"06-09-2004")==0)||
         (strcmp(temp->aadhar,"10007")==0&& strcmp(temp->name,"Dharani")==0 &&strcmp(temp->birth_date,"30-10-2003")==0)||
         (strcmp(temp->aadhar,"10008")==0&& strcmp(temp->name,"Kaviya")==0 &&strcmp(temp->birth_date,"18-09-2003")==0)||
         (strcmp(temp->aadhar,"10009")==0&& strcmp(temp->name,"Boomika")==0 &&strcmp(temp->birth_date,"13-07-2003")==0)||
         (strcmp(temp->aadhar,"10010")==0&& strcmp(temp->name,"Dhivya")==0 &&strcmp(temp->birth_date,"02-07-2003")==0))

         {
         R=3;
         start=search(temp->aadhar,temp->name,temp->birth_date,start,&UNIVERSAL);

         if(UNIVERSAL==0)
            {
            voting();
}
            else
             {
             not_again();
}
           }
         else
            {
              R--;
         if(R==0)
         {
             stop();
             break;
         }
         printf("\n\n\n\n");
         printf("\tYour AADHAR ID or NAME or DATE OF BIRTH is wrong\n\n");
         Sleep(300);
         printf("\t\t\tPlz Re-Enter\n\n");
         Sleep(300);
         system("pause");
        start= main_logs(start);
            }
            temp=temp->next;
     }
     return start;
}


void voting()
{
     system("cls");
    printf("\n\n\n\n");
    printf("\t\t     * * * * * LIST OF CANDIDATES * * * * * \n\n");
    Sleep(300);
    printf("\n----------------------------------------------------------------------------\n");
    printf("\t\t\t       NAME                  RESPECTIVE SYMBOL\n");
    Sleep(300);
    printf("\n----------------------------------------------------------------------------\n");
    printf("\t\t\t 1.Chhota Bheem                1.Laddu\n");
    Sleep(300);
    printf("\t\t\t 2.Ben 10                      2.Watch\n");
    Sleep(300);
    printf("\t\t\t 3.Ninja Hattori               3.Ninja Blades\n");
    Sleep(300);
    printf("\t\t\t 4.Dora                        4.Map\n");
    Sleep(300);
    printf("\t\t\t 5.Heidi                       5.swing\n");
    printf("\n-----------------------------------------------------------------------------\n");
    int B,j;
    printf("\t\t\t Plzz, \n");
    printf("\t\t\t Enter Your Choice:");
    for(j=1;j<=1;j++)
       {
           scanf("%d",&B);

           if(B==1)
           {
               vote1++;
               printf("\n\t\tYOU HAVE SUCCESSFULLY GIVEN YOUR VOTE TO CHHOTA BHEEM\n");
               break;

           }
           if(B==2)
           {
               vote2++;
                printf("\n\t\tYOU HAVE SUCCESSFULLY GIVEN YOUR VOTE TO BEN10 \n");
               break;

           }
           if(B==3)
           {
               vote3++;
                printf("\n\t\tYOU HAVE SUCCESSFULLY GIVEN YOUR VOTE TO NINJA HATTORI\n");
               break;

           }
           if(B==4)
           {
               vote4++;
                printf("\n\t\tYOU HAVE SUCCESSFULLY GIVEN YOUR VOTE TO DORA\n");
               break;
           }
           if(B==5)
           {
               vote5++;
                printf("\n\t\tYOU HAVE SUCCESSFULLY GIVEN YOUR VOTE TO HEIDI\n");
               break;
           }


            if(B!=1||B!=2||B!=3||B!=4||B!=5)
           {
           printf("\n\t\t***** INVALID CHOICE ENTERED**\t\t\n");
           printf("\n\t\t\tENTER AGAIN\t\t\t\n");
   }



       }
   printf("\n\n*THANK YOU\n\n");
   printf("press any key");
   getch();
}

void admin()
{
     int B;
     system("cls");
     printf("\n\n\n\n");
     printf("\t\t\t\t\tEnter Your Password To Unlock The Admin Panel:");
     scanf("%d",&B);
     if(B==3692)
     {
         show();

     }
     else
     {
         printf("!!!!!!Wrong Password.You are unable to access the admin panel!!!!!\n");
     }
}

  void show()
  {
  int G;
      system("cls");

      printf("\n\n\n\n");
      printf("\t\t\t\tPresent Vote Count \n");
      Sleep(500);
      printf("------------------------------------------------------------------------------\n");
      printf("\n");
      printf("\t\t\t  CHHOTA BHEEM is on  :%d Votes\n",vote1);
      Sleep(500);
      printf("\t\t\t  BEN10 is on         :%d Votes\n",vote2);
      Sleep(500);
      printf("\t\t\t  NINJA HATTORI is on :%d Votes\n",vote3);
      Sleep(500);
      printf("\t\t\t  DORA  is on         :%d Votes\n",vote4);
      Sleep(500);
      printf("\t\t\t  HEIDI  is on        :%d Votes\n",vote5);
      printf("\n------------------------------------------------------------------------------\n");
      Sleep(500);
      printf("\nENTER THE SPECIAL PASSWORD TO CLOSING VOTING PORTAL:");
      scanf("%d",&G);
      if(G==1234)
           exi();
      else
      {

        printf("YOU HAVE ENTERED WRONG CLOSING PASSWORD SO YOU ARE REDIRECTED TO THE MAIN LOGIN PAGE");
        main_logs(start);
      }

  }

   void winner()
   {
       system("cls");
       printf("\n\n\n\n");
       if(vote2<vote1 && vote3<vote1 && vote4<vote1 && vote5<vote1)
        {
        printf("\t\t\tThe present Winner is  CHHOTA BHEEM  who has got %d votes\n\n\n\n",vote1);
       }
       else if(vote1<vote2 && vote3<vote2 && vote4<vote2 && vote5<vote2)
        {
            printf("\t\t\tThe present Winner is BEN 10 who has got %d votes\n\n\n\n",vote2);
        }

        else if(vote1<vote3 && vote2<vote3 && vote4<vote3 && vote5<vote3)
        {
            printf("\t\t\tThe present Winner is NINJA HATTORI who has got %d votes\n\n\n\n",vote3);
        }

        else if(vote1<vote4 && vote2<vote4 && vote3<vote4 && vote5<vote4)
        {
            printf("\t\t\tThe present Winner is DORA who has got %d votes\n\n\n\n",vote4);
        }

        else if(vote1<vote5 && vote2<vote5 && vote3<vote5 && vote4<vote5)
        {
            printf("\t\t\tThe present Winner is HEIDI who has got %d votes\n\n\n\n",vote5);
        }

        else
          {
             printf("*CANDIDATES GOT EQUAL VOTES*\n+++++++++++++ Warning!!!!!!!!! No Win Situation ++++++++++++++\n\n");
          }

        printf("\n");
        printf("\n\t\t\t\tEnter Any Key for Main Login");
        getch();
        main_logs(start);

   }

   void stop()
   {
       system("cls");

       printf("\n\n\n\n");
       printf("\t\t\t (:-SORRY YOU ENTERED WRONG CREDENTIALS FOR THREE(3) TIMES IN A ROW -:) \n\n\n");
       Sleep(500);
       printf("\t\t\t Plz try again After A few Moment\n\n\n");
       Sleep(500);
       printf("\t\t\t * * Thank You * *  \n\n\n");
       Sleep(500);
       printf("press any key");
       getch();

   }

   void not_again()
   {
        int A;
        system("cls");
        printf("\n\n\n\n");
        printf("\t\t\t        *YOU HAVE GIVEN YOUR VOTE SUCCESSFULLY*       \n\n\n");
        Sleep(300);
        printf("\t\t\t        *YOU CANNOT GIVE YOUR VOTE MORE THAN ONCE*     \n\n\n");
        Sleep(300);
        printf("\t\t\t If You want to see present winner Enter One(1) or Enter Any Other Key for Main  Logs\n\n");
        Sleep(300);

        scanf("%d",&A);
        if(A==1)
        {
            winner();
        }
        else
        {
            main_logs(start);
        }

   }

   void exi()
   {
       system("cls");

       printf("\n\n\n\n\n");
       Sleep(500);
       printf("\t\t\t        *YOU ARE NOW EXITING THE PORTAL*       \n\n\n");
       Sleep(1000);
       printf("\t\t\t * * Thank You For Using This ONLINE PLATFORM For VOTING * *  \n\n\n");
       Sleep(1000);
       exit(0);
   }
node *search(char x[],char y[],char z[],node *start,int *Y)
{
*Y=0;
  node *t,*space;
  if(start==NULL)
  {
      space=(node*)malloc(sizeof(node));
     strcpy(space->aadhar,x);
     strcpy(space->name,y);
     strcpy(space->birth_date,z);

      start=space;
      space->next=NULL;

  }
  else
  {
      t=start;
      while(t!=NULL)
       {
          if((strcmp(t->aadhar,x)==0&& strcmp(t->name,y)==0 &&strcmp(t->birth_date,z)==0))
          {
          *Y=1;

          break;
          }
              t=t->next;
    }

          if(*Y==0)
          {

          space=(node*)malloc(sizeof(node));

       strcpy(space->aadhar,x);

       strcpy(space->name,y);

       strcpy(space->birth_date,z);
        t=space;
        space->next=NULL;

    }
  }
  return start;
}