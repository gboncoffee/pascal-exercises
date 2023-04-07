program foo;
var n: longint;

begin
    read(n);
    if ((n mod 2 <> 0) and (-20 > n)) or ((n mod 2 = 0) and (7 < n)) then
        writeln('SIM')
    else
        writeln('NAO');
end.
