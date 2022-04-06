PROGRAM veintisiete;

TYPE
    TipoPersona = RECORD
        nombre:String;
        tel:longint;
    END;
    indice = 0..3;
    tipoArr = ARRAY[indice] OF TipoPersona;

VAR i, pos:integer; persona:TipoPersona; registro:tipoArr; nombre:String;

FUNCTION busquedaBinaria(arr:tipoArr; nombre:String):INTEGER;
    VAR
        iLow, iHigh, medio:integer;
        encontrado:boolean;
        sol:INTEGER;
    BEGIN
        sol := -1;
        iLow := Low(indice);
        iHigh := High(indice);
        encontrado := false;
        REPEAT
            medio := (iLow + iHigh) div 2;
            IF nombre = arr[medio].nombre THEN
                BEGIN
                encontrado := true;
                sol := medio;
                END
            ELSE IF nombre < arr[medio].nombre THEN
                iHigh := medio - 1
            ELSE
                iLow := medio + 1;
        UNTIL (encontrado OR (iHigh < iLow));
        busquedaBinaria := sol;
    END;

PROCEDURE ordenarAlfa(VAR arr:tipoArr);
    VAR
        i,j:integer;
        temp:TipoPersona;
    BEGIN
    FOR i := High(arr) DOWNTO Low(arr) do
        BEGIN
        FOR j := 0 to i - 1 DO
            BEGIN
            IF arr[j].nombre > arr[j + 1].nombre THEN
                BEGIN
                temp := arr[j];
                arr[j] := arr[j + 1];
                arr[j + 1] := temp;
                END;
            END;
        END;
    END;

PROCEDURE imprimir(arr:tipoArr);
	VAR i:integer;
	BEGIN
	FOR i := Low(arr) TO High(arr) DO
		write(arr[i].nombre, ', ');
	END;

BEGIN
FOR i := Low(indice) TO High(indice) DO
    BEGIN
    write('Ingrese nombre de persona ', i, ': ');
    readln(persona.nombre);
    write('Ingrese telefono de persona ', i, ': ');
    readln(persona.tel);
    Registro[i] := persona;
    END;

writeln('Antes de ordenar: ');
imprimir(Registro);
writeln('');
ordenarAlfa(Registro);
writeln('Despues de ordenar: ');
imprimir(Registro);
writeln('');
write('Ingrese nombre de la persona a buscar: ');
readln(nombre);
pos := busquedaBinaria(Registro, nombre);
IF (NOT (pos = -1)) THEN
    writeln('El numero de ', Registro[pos].nombre,' es: ', Registro[pos].tel)
ELSE
    writeln('No existe esa persona.');
END.