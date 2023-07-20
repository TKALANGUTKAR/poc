%option noyywrap
%{
	#include<stdio.h>
	int pc = 0, nc =0;
%}

%%
[-][0-9]+|[-][0-9]*[.][0-9]+		{nc++; printf("Positive no. count: %d\nNegative no. count: %d\n\n", pc, nc);}
[+]?[0-9]+|[+]?[0-9]*[.][0-9]+		{pc++; printf("Positive no. count: %d\nNegative no. count: %d\n\n", pc, nc);}
.|\n					{}
%%
int main()
{
	yylex();
	return 0;
}