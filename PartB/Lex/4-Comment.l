%{
	#include<stdio.h>
%}

%%
\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
%%

main(int argc, char **argv)
{
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2], "w");
	yylex();
}
int yywrap() { return 1; }
