%{
    // declarations
    #include <stdio.h>
    #include "y.tab.h"
%}


alpha [A-Za-z]
digit [0-9]+(.[0-9]+)?
symbols ['\-_@#\.\/\?]
/* rules section */
%% 
[ \t\n]
[iI][nN][sS][eE][rR][tT]                          return INSERT;
[iI][nN][tT][oO]                                  return INTO;
[vV][aA][lL][uU][eE][sS]                          return VALUES;
{digit}+                                          return NUM;
'({alpha}|{digit}|{symbols}|,)+'                  return ID;
\"({alpha}|{digit}|{symbols}|,)+\"                return ID;
({alpha}|{digit}|{symbols})+                      return ID;
.                                                 return yytext[0];
%%