%{
	#include <stdio.h>
	int positive = 0, negative = 0, positiveFraction = 0, negativeFraction = 0;
%}
%%
\+{0,1}[0-9]+ 		{positive++;}
-[0-9]+ 		{negative++;}
\+{0,1}[0-9]+.[0-9]+ 	{positiveFraction++;}
-[0-9]+.[0-9]+ 		{negativeFraction++;}
\n	
%%
int yywrap(){
	return 1;
}
int main(int argc,  char **argv) {
	yyin = fopen(argv[1], "r");
	yylex();
	printf("No. of positive integers = %d\n", positive);
	printf("No. of negative integers = %d\n", negative);
	printf("No. of positive fractional numbers = %d\n", positiveFraction);
	printf("No. of negative fractional numbers = %d\n", negativeFraction);
}
