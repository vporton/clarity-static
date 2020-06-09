S = ws? (form ws?)*
form = list / record / atom
list = "(" ws? (form ws)* form ws? ")"
record = '{' ws? (pair ',' ws)* pair ','? ws? '}'
pair = symbol ':' ws form 
atom = literal / symbol 
literal  =  number / string / principal / identifier
number = int / uint / hex

int = [-]?[0-9]+
uint = "u"[0-9]+
hex = "0x" [0-9a-fA-F]+
string = "\"" (("\\\"")/[^"])* "\""
principal = "'" STANDARD_PRINCIPAL identifier?
identifier = '.' CONTRACT_NAME field?
field = '.' [a-zA-Z0-9\-]+
symbol = [A-Za-z_\-!\?\+<>=/\*][A-Za-z0-9_\-!\?\+<>=/\*]*
ws = ([ \t\n] / comment)+
comment = ";;" [^\n]* "\n"?
STANDARD_PRINCIPAL = [0-9A-Z]+
CONTRACT_NAME = [a-zA-Z]([a-zA-Z0-9]/[-_])+
