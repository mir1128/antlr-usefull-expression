ID : [a-zA-Z]+;

INT: DIGIT+;

FLOAT: DIGIT+ '.' DIGIT*
	| '.' DIGIT+
	;

STRING: '"' (ESC|.) *? '"';

LINE_COMMENT: '//' .*? '\r'?'\n' -> skip;
COMMENT: '/*' .* ? '*/'  -> skip;

WS : [ \t\r\n] -> skip;

fragment
DIGIT : [0-9] ;

fragment
ESC: '\\"' | '\\\\'

