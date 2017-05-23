%{
	#include<stdio.h>
	int c = 0;
%}
%%
\/\/.*			c++;
\/\*[\t\n .]*\*\/	c++;
%%
int main(int argc, char **argv)
{
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2], "w");
	yylex();
	printf("Number of comments = %d", c);
}
int yywrap() { return 1; }
