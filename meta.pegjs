 Program
    = Space? List Space?

List
    = "(" &Space? (Element &Space)* Element? &Space? ")"

Element
    = ClarityName / Int / Uint / Bool / List / Placeholder

ClarityName
    = [a-zA-Z]([a-zA-Z0-9]/[-_!?+<>=/*])*/[-+=/*]/[<>]"="?

Int
    = [0-9]+

Uint
    = "u"[0-9]+

Bool
    = "true" / "false"

Space
    = ";;"[^\n]* / [ \n\t]+

// My extension
Placeholder
    = "#"
