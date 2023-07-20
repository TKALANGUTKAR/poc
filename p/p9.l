%option noyywrap
%{
	#include<stdio.h>
	int c = 0;
%}

%%
"if"|"else"|"while"|"int"|"float"	{c++;printf("Keyword\n");}
[a-zA-Z_]+[a-zA-Z0-9_]*			{c++;printf("Identifier\n");}
"="|"+"|"-"|"*"|"/"			{c++;printf("Operator\n");}
[-]?[0-9]+				{c++;printf("Integer\n");}
[-]?[0-9]*[.][0-9]+			{c++;printf("Float\n");}
%%
int main()
{
	yylex();
	printf("The no. of tokens is %d", c);
	return 0;
}