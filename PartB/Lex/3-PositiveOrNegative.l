%{
	#include <stdio.h>
	int p = 0, n = 0, pf = 0, nf = 0;
%}
%%
\+{0,1}[0-9]+ 		p++;
-[0-9]+ 		n++;
\+{0,1}[0-9]+\.[0-9]+ 	pf++;
-[0-9]+\.[0-9]+		nf++;
\n	
%%
int yywrap(){
	return 1;
}
int main(int argc,  char **argv) {
	yyin = fopen(argv[1], "r");
	yylex();
	printf(
	"Positive integers = %d\n"
	"Negative integers = %d\n"
	"Positive fractions = %d\n"
	"Negative fractions = %d\n",
	p, n, pf, nf);
}
