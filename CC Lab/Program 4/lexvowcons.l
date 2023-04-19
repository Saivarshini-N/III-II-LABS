/*%{
int vc = 0, cc = 0;
%}
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
%%
int yywrap(){}
int main(){
	printf("Enter the string:");
	yylex();
	printf("No:of vowels : %d\n",vc);
	printf("No:of consonants : %d\n",cc);
	return 0;
}
*/

%{
#include<stdio.h>
int vcount=0,ccount=0;
%}
%%
[a|i|e|o|u|E|A|I|O|U] {vcount++;}
[a-z A-Z (^a|i|e|o|u|E|A|I|O|U) ] {ccount++;}
%%
int yywrap(){}
int main(){
	yylex();
	printf("No. of Vowels :%d\n",vcount);
	printf("No. of Consonants :%d\n",ccount);
	return 0;
}



