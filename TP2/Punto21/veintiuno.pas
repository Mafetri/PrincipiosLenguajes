PROGRAM vintiuno;

CONST 
    largo = 9;

VAR
    palabra:String[largo];

FUNCTION capicua(p:String): boolean;
    VAR 
        flag:boolean;
        i, j, correctas, mitad:integer;

    BEGIN
    flag := false;
    mitad := (largo div 2);
    i := largo;
    j := 1;
    correctas := 0;

    WHILE ((i >= mitad) AND (j <= mitad)) DO
        BEGIN
        IF p[i] = p[j] THEN correctas := correctas + 1;
        j := j + 1;
        i := i - 1;
        END;

    IF correctas = mitad THEN
        flag := true;
    
    capicua := flag;
    END;


BEGIN
palabra := 'reconocer';
write(palabra,' ');
IF capicua(palabra) THEN
    writeln('es capicua')
ELSE
    writeln('no es capicua');
END.