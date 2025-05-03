grammar Language;

program: dcl*;

dcl: varDcl | funcDcl | typeDcl | stmt  ;
//treas alternativas para asignar varables
varDcl
	: explicitVarDeclWithInit   // 'var' <ID> <Tipo> '=' <expr> ';'
    | explicitVarDeclWithoutInit // 'var' <ID> <Tipo> ';'
    | implicitVarDecl          // <ID> ':=' <expr> ';'
    ;

explicitVarDeclWithInit: 'var' ID typeSpecifier '=' expr ';';// 'var' ID typeSpecifier '=' expr ';'
explicitVarDeclWithoutInit: 'var' ID typeSpecifier ';';// 'var' ID typeSpecifier ';'
implicitVarDecl: ID ':=' expr ';';	// <ID> ':=' <expr> ';'

// **Declaración de struct **
typeDcl: 'type' ID 'struct' '{' structField+ '}';
structField: ID typeSpecifier (';' )?; 

// Los tipos soportados 
typeSpecifier: baseType | sliceType;
baseType: 'int' | 'float64' | 'string' | 'bool' | 'rune' | ID;
sliceType: ('[' ']')+ baseType;// esto nos da posibilidad de tener slices de slices y arreglos y matrices de tipo []int, [][]int, [3]int, [3][3]int, etc.

classDcl: 'class' ID '{' classBody* '}';
classBody: varDcl | funcDcl ;

funcDcl: 'func' ( '(' receiverParam ')' )? ID '(' params? ')' (typeSpecifier)? '{' dcl* '}';
receiverParam: ID typeSpecifier;
param: ID typeSpecifier;
params: param (',' param)*;

// Regla para slice literal con inicialización
// Ejemplo: numbers = []int {1, 2, 3, 4, 5};
sliceLiteral: '[' ']' baseType '{' exprList? '}' ;

// Multidimensional slice literal: [][]int{ {expr, expr, ...}, {expr, ...}, ... }
multiSliceLiteral: '[' ']' sliceType '{' multiSliceRows? '}' ;
multiSliceRows: multiSliceRow (',' multiSliceRow)* ;//filas de la matriz
multiSliceRow: '{' exprList? '}' ;

// Lista de expresiones (para el contenido del slice)
exprList : expr (',' expr)* ;

// Llamadas a funciones de slices, donde se asume que se llaman como métodos sobre el slice.
// Por ejemplo: numeros.Index(30), numeros.append(4), numeros.len()
sliceFunctionCall 
    : 'slices' '.' 'Index' '(' expr',' expr ')'         # SliceIndex
    |  'append' '(' expr',' expr ')'          # SliceAppend
    | 'len' '('expr ')'                  # SliceLen
    ;

// Llamada a la función strings.Join (se asume la sintaxis: strings.Join(slice, separator))

stringFunctionCall 
    : 'strings' '.' 'Join' '(' expr ',' expr ')'  # StringJoin
    ;





stmt: 
	expr ';'								# ExprStmt
	| 'fmt.Println' '(' expr (',' expr)* ')' ';'				# PrintStmt
	| '{' dcl* '}'							# BlockStmt
	| 'if' '(' expr ')' stmt ('else' stmt)?	# IfStmt
	| 'while' '(' expr ')' stmt				# WhileStmt
	| 'for' '(' expr ')' stmt               # ForWhileStmt
	| 'for' '(' forInit expr ';' expr  ')' stmt	# ForStmt
	| 'for' '(' ID ',' ID ':=' 'range' expr ')' stmt  # ForRangeStmt
	| 'break' ';'							# BreakStmt
	| 'continue' ';'						# ContinueStmt
	| 'return' expr? ';'					# ReturnStmt
	| switchS							# SwitchStmt
	| varDcl                               # VarDeclStmt; 


forInit: varDcl | expr ';';

//Expresiones
expr:
	'-'  expr									# Negate
	| '!' expr									# Not
	| expr call+								# Callee
	| expr '[' expr ']'   						# ArrayAccessExprContext
	| expr op = ('*' | '/'| '%') expr			# MulDiv
	| expr op = ('+' | '-') expr				# AddSub
	| expr op = ('>' | '<' | '>=' | '<=') expr	# RelationalS
	| expr op = ('==' | '!=') expr				# Equality
	| expr op = ('&&' | '||' ) expr		        # Logical
	| expr '=' expr								# Assign
	| sliceFunctionCall                         # SliceFuncCall
    | stringFunctionCall                        # StringFuncCall
	| BOOL										# Boolean
	| FLOAT										# Float
	| STRING									# String
	| RUNE										# Rune
	| multiSliceLiteral                        # MultiSliceLiteralExpr
	| sliceLiteral                              # SliceLiteralExpr
	| INT										# Int
	| 'nil'                                     # Nil
	| 'new' ID '(' args? ')'					# New
	| ID '{' structLiteralFields? '}'           # StructLiteral
	| ID										# Identifier
	| '(' expr ')'								# Parens
	| expr '++'                                 # PostIncrement
    | expr '--'                                 # PostDecrement;

structLiteralFields:
    structLiteralField (',' structLiteralField)* ','?
    ;

structLiteralField:
    ID ':' expr
    ;

call: '(' args? ')' #FuncCall | '.' ID #Get;
args: expr (',' expr)*;

switchS:
    'switch' expr '{' switchCase* defaultCase? '}'
    ;

switchCase:
    'case' expr ':' stmt+ 
    ;

defaultCase:
    'default' ':' stmt+
    ;

INT: [0-9]+;
BOOL: 'true' | 'false';
FLOAT: [0-9]+ '.' [0-9]+;
STRING: '"' ( '\\' [\\"nrt] | ~["\\] )* '"';
RUNE: '\'' ~'\''* '\'';// EJEMPLO: 'a'
WS: [ \t\r\n]+ -> skip;
//ID: [a-zA-Z]+;
ID: [a-zA-Z_][a-zA-Z_0-9]*;
COMMENT: '//' ~[\r\n]* -> skip;
ML_COMMENT: '/*' .*? '*/' -> skip;
