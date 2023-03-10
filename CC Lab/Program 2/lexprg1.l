%%
"if" |
"else" |
"while" |
"do" |
"break" |
"typedef" |{printf("%s is a keyword\n",yytext);}
[a-zA-Z][a-zA-Z0-9_]* {printf("%s is an identifier\n",yytext);}
[0-9]+ | {printf("%s is a number\n",yytext);}
[+/*%\-] {printf("%s is an arithmetic operator\n",yytext);}
[!=][=] {printf("%s is a relational operator\n",yytext);}
"#include<stdio.h>" |
"#include<stdbool.h>" |
"#include<string.h>" |
"#include<math.h>" {printf("%s is a header file\n",yytext);}
%%
int yywrap(void){}
int main()
{
yylex();
return 0;
}
 

