%{
        #include<stdio.h>
        #include<stdlib.h>
%}
%token NUM ID NL
%left '*''/'
%left '+''-' 
%%
stmt: exp NL { printf("Expression is valid.\n"); exit(0); }
exp :	exp'+'exp
        | exp'-'exp
        | exp'*'exp
        | exp'/'exp
        | '('exp')'
        | '['exp']'
        | '{'exp'}'
        | NUM
        | ID
        ;
%% 
int main()
{
        printf("Enter expression: ");
        yyparse();
}
yyerror()
{
        printf("Expression is invalid.\n");
        exit(0);
}
