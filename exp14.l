%{
#include <stdio.h>
#include <string.h>

#define MAX_WORD_LENGTH 100
%}

%option noyywrap

%%
[a-zA-Z]+ {
    char word[MAX_WORD_LENGTH];
    strncpy(word, yytext, yyleng);
    word[yyleng] = '\0';
    printf("%s\n", word);
}

.|\n {
    // Ignore other characters
}

%%

int main() {
    yylex();
    return 0;
}
