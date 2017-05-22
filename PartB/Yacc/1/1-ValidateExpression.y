%{
        #include<stdio.h>
        #include<stdlib.h>
%}
%token NUM ID NL
%left '*''/'
%left '+''-' 
 
%%
stmt: exp NL { printf("Valid\n");exit(0); }
exp : exp'+'exp
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
 
main()
{
        printf("Enter expression: ");
        yyparse();
}

yyerror()
{
        printf("Invalid\n");
        exit(0);
}
