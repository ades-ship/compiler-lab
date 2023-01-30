/* declaration section */
%{
   #include<stdio.h>
    int lc=0,tc=0,sc=0,cc=0;
%}

/* rule section */
%%
[\n] {lc++;}
[\t] {tc++;}
[ ] {sc++;}
. {cc++;}
%%

// subroutine section
int yywrap() 
{
 return 1;
}
int main() 
{ 
  yylex();
printf("\n number of lines are=%d\n",lc);
printf("\n number of tabs are=%d\n",tc);
printf("\n number of spaces are=%d\n",sc);
printf("\n number of character are=%d\n",cc);

return 0;
}
