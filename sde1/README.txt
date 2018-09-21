Author: Rodrigo Rojas

Contact: rrojas@clemson.edu

Project: SDE1

Purpose: Gain experience designing, implementing and testing scanners and parses
		 Introduce flex and bison as general purpose scanner/parser developmnent tools
		 Use flex and bison to build a grammatical recognizer to distinguish between 3
		 languages (grammars), or 4 cases if we include "none of the above"

Contents: whichclass.in, lex.yy.c, whichclass.y, whichclass.tab.c, whichclass.tab.h,
		  whichclass.c, yyerror.c, buildit, whichclass.output, whichclass.log
		  
Ten input files:	"aaaaaacc", "aaaaaaccaac","acacACAC", "acacacacacacac", "acacacacacacacccc", "acacfg", "ccccaa", "ccccaa125ccccaa"
		  			"ccccaaq", "udechileacac"

"whichclass.in"
	- This is the flex file which will determine the token strings that will be passed to the bison file whichclass.

"lex.yy.c"
	- This is a "C" file created when flex file "whichclass.in" is compiled which will be used by "whichclass.c" as a library to perform the scanner/parser of the string

"whichclass.y"
	- This is the bison file which will get the tokens scanned by the flex file "whichclass.in" and will determine which of the four languages the tokens belong to

"whichclass.tab.c"
	- This is a "C" file created when bison file "whichclass.y" is compiled which will be used by "whichclass.c" as a library to perform the scanner/parser of the string

"whichclass.tab.h"
	- This is a "h" file created when bison file "whichclass.y" is compiled which will be used by "whichclass.in" as a library to pass tokens to the bison file "whichclass.y"

"whichclass.c"
	- This is the main C file which will be used as a "wrapper" to call flex and bison and perform the scanner/parser of the input string

"yyerror.c"
	- This is a "C" file which will be called whenever a syntax error has been detected on the input string and will output string "class 'None of the above' to
	  demonstrate that string is not part of either of the three grammars 

"buildit"
	- This is a script which will compile the bison file "whichclass.y", flex file "whichclass.in", and C file "whichclass.c" to create executable "whichclass"
	  which is the program that will scan/parser the input string 

"whichclass.output"
	- Output file created when bison file "whichclass.y" is compiled which details the token that have been used and unused and explain the possible strings of each of the languages
	  stored on bison file "whichclass.y"
	  
"whichclass.log"
	- Contains the output of 10 different created inputs different from SD1 PDF

Ten input files:
	- Input files that were tested and output was recorded on file "whichclass.log"

Pledge:
On my honor I have neither given nor received aid on this
exam.

