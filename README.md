# Unix-Lab
This repository contains programs from the Unix Lab - Sem VI according to Bangalore University Syllabus.

## Dependencies

- Ubuntu

	`sudo apt install build-essential flex`

## How to Run?

- For Shell Scripts:

	Run using: `bash <fileName.sh>`

- For C Programs:

	Compile using: `cc <fileName.c>`

	Run using: `./a.out`

- For Lex Programs:

	Compile using: `lex <fileName.l>; gcc lex.yy.c`

	Run using: `./a.out`

- For Yacc Programs:
	
	Compile using: `lex <lexProgram.l>; yacc -d <yaccProgram.y>; gcc lex.yy.c y.tab.c;`
	
	Run using: `./a.out`

## "If" Nesting Yacc Program

- Sample Runs:
	
	```
	bash$ ./a.out
	Enter an expression:
	if(statement) { if (statement) { if(statement) statement; } }
	Levels of nesting = 3
	
	bash$ ./a.out
	Enter an expression:
	if(statement) { if (statement) ;}
	Levels of nesting = 2
	
	bash$ ./a.out
	Enter an expression:
	statement;
	Levels of nesting = 0
	```