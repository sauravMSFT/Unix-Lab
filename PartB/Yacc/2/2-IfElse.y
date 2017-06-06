%{
        #include <stdio.h>
        #include <stdlib.h>
        #include "y.tab.h"
        int yylex();
	void yyerror(char const *);
	void result();
        int nl=0;
%}
%token IF STATEMENT
%%
program: stmt
	{ result(); }
	|STATEMENT';'
	{ result(); }
	|';'
	{ result(); }
stmt:	IF cond '{'stmt'}'
	{++nl;}
	|IF cond stmt
	{++nl;}
	|IF cond STATEMENT';'
        {++nl;}
	|IF cond ';'
	{++nl;}
cond:	'('STATEMENT')'
	;
%%
int main()
{
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}
void yyerror (char const *s)
{
	fprintf (stderr, "%s\n", s);
	exit(0);
}
void result()
{
	printf("Levels of nesting = %d\n", nl);
	exit(0);
}