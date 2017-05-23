%{
	#include <stdio.h>
	int vowels = 0;
	int consonants = 0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%
int yywrap(){ return 1; }
int main() 
{
	printf("Enter the string and press return and ^D\n");
	yylex();
	printf(
	"No. of vowels = %d\n"
	"No. of consonants = %d\n", vowels, consonants);
	return 0;
}
