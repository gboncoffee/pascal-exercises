program that_strange_property;
var n, s: longint;

begin
    read(n);
    s := ((n div 100) + (n mod 100));
    if s*s = n then
        writeln('SIM')
    else
        writeln('NAO');
end.
