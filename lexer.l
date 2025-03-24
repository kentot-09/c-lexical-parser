%{
#include <stdio.h>
#include <stdlib.h>
#include "parser.tab.h"  // This is the missing header file
%}

DIGIT   [0-9]
LETTER  [a-zA-Z]
ID      {LETTER}({LETTER}|{DIGIT})*
NUMBER  {DIGIT}+

%%

{NUMBER}    { yylval = atoi(yytext); return NUMBER; }
{ID}        { return ID; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return MULT; }
"/"         { return DIV; }
";"         { return SEMICOLON; }
"="         { return ASSIGN; }

[ \t\n]     ; // Ignore spaces and newlines
.           { printf("UNKNOWN CHARACTER: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
