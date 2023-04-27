program chess;
var l, c: longint;

begin
    read(l, c);
    if ((l mod 2) = (c mod 2)) then
        writeln('BRANCA')
    else
        writeln('PRETA');
end.
