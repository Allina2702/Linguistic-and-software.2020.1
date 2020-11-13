%{
#include <stdio.h>
#include "y.tab.h"
#ifndef YYSTYPE
#define YYSTYPE char*
#endif
#define INTEGER 288
%}

%%
("Begin")               return KEY_BEGIN;
("End")                 return KEY_END;
("Integer")             return KEY_INTEGER;
("Long Integer")        return KEY_LONG_INTEGER;
[0-9]+ 		        return CONSTANT;
([a-zA-Z])+ 	        return IDENTIFIER;
(\*){1} 		return MULTIPLY;
(\/){1} 		return DIVIDE;
(\,){1} 		return COMMA;
(\=){1} 		return ASSIGN;
(\-){1} 		return MINUS;
(\+){1} 		return PLUS;
(\(){1} 		return OPEN_BRACKET;
(\)){1} 		return CLOSE_BRACKET;
(\;){1} 		return DELIMITER;
\n
[ \t]+
%%

int yywrap()
{
return 1;
} 
