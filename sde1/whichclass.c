// Library Declaration Section
#include "whichclass.tab.c"
#include "lex.yy.c"
#include "yyerror.c"


int main()
{
	printf("\n>>>> 3520 Grammatical Recognizer (SDE1) <<<<<<\n");
    yyparse();
	return(1);
}
