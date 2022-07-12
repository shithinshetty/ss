%{
	#include<stdio.h>
	#include<stdlib.h>		
%}
%token A B
%%
str:S '\n' {return 0;}
S:A S 
|B
;
%%

int main(){
	printf("Enter the string\n");
	yyparse();
	printf("Valid string\n");
	return 0;
}

int yyerror(){
	printf("Ivalid string\n");
	exit(0);
}
