int yyerror(s)	// Called by yyparse on an error 
	char *s;
{
    printf("\nclass is 'None of the above'\n\n");
	return(-1);
}
