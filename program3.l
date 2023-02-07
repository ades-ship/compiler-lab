/*  lex code to replce a word with another word in a file  
 
*/
%{
#include<stdio.h>
#include<string.h>
  
char a[100];
char b[100];
  
  
%}

  
%%
[a-zA-Z]+    { if(strcmp(yytext, a)==0)
                   fprintf(yyout, "%s",b);
                else
                    fprintf(yyout, "%s", yytext);}
.            {fprintf(yyout, "%s", yytext);}
%%
  
  
int yywrap()
{
    return 1;
}
  
/* code section */
int main()
{
        extern FILE *yyin, *yyout;
          
    yyin=fopen("input1.txt", "r");
   
    yyout=fopen("output1.txt", "w");
   scanf("%s",a);
    scanf("%s",b);
        yylex();
}
