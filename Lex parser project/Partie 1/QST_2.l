%{
 #include <stdio.h>
%}
%%

%Start MOTCLES
<MOTCLES>[a-zA-Z]+ printf("Reconnaissance d'une suite de variables : %s\n", yytext);
<MOTCLES>[a-zA-Z]+ printf(" variable: %s\n", yytext); //Pour reconnaitre un variable
<MOTCLES>[a-z]+ /* reconnaissance d'un identificateur */
<MOTCLES>integer /* reconnaissance d'un mot clé integer */
[0-9]* printf("nombre postif\n"); :/* reconnaissance d'un nombre positif */
[a-zA-Z0-9/-\.]+ printf("fichier\n");
"+" return(PLUS) /*Pour l'addition */

"if(){}else{}" {boucle++; ECHO;} /*reconnaissance d'une boucle */
\) { if (boucle>0)
 {
 boucle--;
 ECHO; /* affiche yytext */
}
 else
 printf ("Erreur dans la boucle\n");
}