program age;
var n, a: longint;

begin
    read(n);
    a := 2020 - n;
    writeln(a);
    writeln();
    if 16 <= a then
        writeln('SIM')
    else
        writeln('NAO');
    if 18 <= a then
        writeln('SIM')
    else
        writeln('NAO');
end.
