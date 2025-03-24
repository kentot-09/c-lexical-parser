%{
#include <stdio.h>
void yyerror(const char *s);
int yylex();  // Declare yylex() so Bison knows it exists
%}

%defines "parser.tab.h"
%token NUMBER ID PLUS MINUS MULT DIV ASSIGN SEMICOLON

%%
statement: ID ASSIGN expression SEMICOLON  { printf("\n✅ Parsed: Assignment Statement\n"); }
         | expression                       { printf("\n✅ Parsed: Expression\n"); }
         ;

expression: expression PLUS term    { printf("\n✅ Parsed: Addition Operation\n"); }
          | expression MINUS term   { printf("\n✅ Parsed: Subtraction Operation\n"); }
          | term
          ;

term: term MULT factor   { printf("\n✅ Parsed: Multiplication Operation\n"); }
    | term DIV factor    { printf("\n✅ Parsed: Division Operation\n"); }
    | factor
    ;

factor: NUMBER
      | ID
      ;
%%
void yyerror(const char *s) {
    printf("Syntax Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}
