program produto_impar;
var a, b, p: longint;

begin
    read(a, b);
    if ((a mod 2 = 1) and (b mod 2 = 1) and (a <= b)) then begin
        p := 1;
        repeat
            p := p * a;
            a := a + 2;
        until a > b;
        writeln(p);
    end
    else
        writeln('erro');
end.
