PROGRAM veintiseis;

TYPE
    TipoComplejo = RECORD
        ParteReal:real;
        ParteImag:real;
    END;

VAR
    num1, num2:TipoComplejo;
    sum, res, divi, mult:TipoComplejo;

FUNCTION suma(num1,num2:TipoComplejo):TipoComplejo;
    VAR sol:TipoComplejo;
    BEGIN
        sol.ParteReal := num1.ParteReal + num2.ParteReal;
        sol.ParteImag := num1.ParteImag + num2.ParteImag;
        suma := sol;
    END;

FUNCTION resta(num1,num2:TipoComplejo):TipoComplejo;
    VAR sol:TipoComplejo;
    BEGIN
        sol.ParteReal := num1.ParteReal - num2.ParteReal;
        sol.ParteImag := num1.ParteImag - num2.ParteImag;
        resta := sol;
    END;

FUNCTION division(num1,num2:TipoComplejo):TipoComplejo;
    VAR sol:TipoComplejo; a,b,c,d:real;
    BEGIN
        a := num1.ParteReal;
        b := num1.ParteImag;
        c := num2.ParteReal;
        d := num2.ParteImag;
        sol.ParteReal := ((a * c) + (b * d)) / ((c * c) + (d * d));
        sol.ParteImag := ((b * c) - (a * d)) / ((c * c) + (d * d));
        division := sol;
    END;

FUNCTION multiplicacion(num1,num2:TipoComplejo):TipoComplejo;
    VAR sol:TipoComplejo;
    BEGIN
        sol.ParteReal := (num1.ParteReal * num2.ParteReal) - (num1.ParteImag * num2.ParteImag);
        sol.ParteImag := (num1.ParteReal * num2.ParteImag) + (num1.ParteImag * num2.ParteReal);
        multiplicacion := sol;
    END;

BEGIN
num1.ParteReal := 2;
num1.ParteImag := 3;
num2.ParteReal := 4;
num2.ParteImag := 1;
sum := suma(num1, num2);
res := resta(num1, num2);
divi := division(num1, num2);
mult := multiplicacion(num1, num2);
writeln('La suma es: ', sum.ParteReal, ' + (', sum.ParteImag, 'i)');
writeln('La resta es: ', res.ParteReal, ' + (', res.ParteImag, 'i)');
writeln('La multiplicacion es: ', mult.ParteReal, ' + (', mult.ParteImag, 'i)');
writeln('La division es: ', divi.ParteReal, ' + (', divi.ParteImag, 'i)');
END.