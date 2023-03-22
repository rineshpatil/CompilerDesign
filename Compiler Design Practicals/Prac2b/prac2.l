%{
#include<stdio.h>
%}


%%
[\t ]+ ;
[0-9]+|[0-9]*\.[0-9]+ { printf("\n%s is NUMBER", yytext);}
#.* { printf("\n%s is COMMENT", yytext);}
[a-zA-Z][a-zA-Z0-9]+ { printf("\n%s is KEYWORD", yytext);}
\"[^ \"\n]*\" { printf("\n%s is STRING", yytext);}
\n { ECHO;}
%%


int main()
{
	while( yylex());
}

int yywrap( )
{
	return 1;
}