%{
#include "QST_2.h"
#include <stdio.h>
#include <math.h>
%}
%token<valeur> MOTCLES
%type<valeur> MOTCLES
%left PLUS

%%start entree
%%
entree : /* Vide */
  | entree num
  ;
  num :FIN
  | Expression FIN (printf("Le resultat de l'addition est : %f\n,$1");)
  ;
  EXPRESSION: MOTCLES  {$$=$1;}
  |Expression PLUS Expression {$$=$1+$3;}
  ;
  int main(void) { yyparse(); }