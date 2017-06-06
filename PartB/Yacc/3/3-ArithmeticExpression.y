%{
        #include<stdio.h>
        #include<stdlib.h>
        int yylex();
        void yyerror();
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
        | ID
        ;
%% 
int main()
{
        printf("Enter expression: ");
        yyparse();
}
void yyerror()
{
        printf("Expression is invalid.\n");
        exit(0);
}
