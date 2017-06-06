%{
        #include "y.tab.h"
%}
WS [ \t]*
STMT "statement"
%%
{WS}"if"{WS}	return IF;
{WS}{STMT}{WS}	return STATEMENT;
["{""}""("")"";"]               return yytext[0];
%%
int yywrap() { return 1; }