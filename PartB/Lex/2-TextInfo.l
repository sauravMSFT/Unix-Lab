%{
	#include <stdio.h>
	int lines = 0, words = 0, smallLetters = 0, capitalLetters = 0;
	int numbers = 0, specialCharacters = 0, total = 0;
%}
%%
\n		{lines++; words++;}
[\t' ']*	words++;
[A-Z]	capitalLetters++;
[a-z]	smallLetters++;
[0-9]	numbers++;
. specialCharacters++;
%%
int main(int argc, char **argv){
	yyin = fopen(argv[1], "r");
	yylex();
	
	total = smallLetters + capitalLetters + numbers + specialCharacters;

	printf(
	"The file %s contains: "
	"\nLines = %d"
	"\nWords = %d"
	"\nSmall Letters = %d" 
	"\nCapital Letters = %d"
	"\nNumbers = %d" 
	"\nSpecial Characters = %d"
	"\nTotal = %d",
	argv[1], lines, words, smallLetters, capitalLetters,
	numbers, specialCharacters, total); 
}
int yywrap() { return 1; }
