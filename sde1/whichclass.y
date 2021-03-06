%{
    #include <stdio.h>
    #include <ctype.h>
    int yylex(void);
    int yyerror(char *s);
%}

%token A
%token C
%token ERROR

%% /* Grammar Rules */

s: A C d; 
d: s; 
d: A C {if (yychar == YYEOF) {printf("\nclass is w1\n\n");}};

s: A a c;
a: A a;
a: A;
c: C c;
c: C {if (yychar == YYEOF) {printf("\nclass is w2\n\n");}};

s: g h;
g: C g;
g: C;
h: A h;
h: A {if (yychar == YYEOF) {printf("\nclass is w3\n\n");}};

%%
