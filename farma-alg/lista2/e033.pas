program geometry;
var n, l: longint;

begin
    read(n, l);

    if 3 = n then
        writeln('TRIANGULO ', 3 * l)
    else if 4 = n then
        writeln('QUADRADO ', l * l)
    else if 5 = n then
        writeln('PENTAGONO')
    else
        writeln('ERRO');
end.
