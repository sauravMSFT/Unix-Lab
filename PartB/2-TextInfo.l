%{
	#include <stdio.h>
	int lines = 0, words = 0, smallLetters = 0, capitalLetters = 0;
	int numbers = 0, specialCharacters = 0, total = 0;
%}
%%
\n {lines++; words++;}
[\t' '] words++;
[A-Z] capitalLetters++;
[a-z] smallLetters++;
[0-9] numbers++;
. specialCharacters++;
%%
int main(int argc, char **argv){
	yyin = fopen(argv[1], "r");
	yylex();
	total = smallLetters + capitalLetters + numbers + specialCharacters;

	printf("The file %s contains: ", argv[1]);
	printf("\nLines = %d", lines); 
	printf("\nWords = %d", words); 
	printf("\nSmall Letters = %d", smallLetters); 
	printf("\nCapital Letters = %d", capitalLetters); 
	printf("\nDigits = %d", numbers); 
	printf("\nSpecial Characters = %d", specialCharacters); 
	printf("\nTotal = %d", total); 
}
int yywrap() { return 1; }
