%option noyywrap
%{
	#include<stdio.h>
	float sum = 0;
	int c = 0;
%}

%%
[0-9]+	{
		sum += atoi(yytext);
		c++;
        }
\n	{
		printf("Average : %f\n\n", (sum/c));
		sum = c = 0;
	}
.	{}
%%

int main()
{
	yylex();
	return 0;
}