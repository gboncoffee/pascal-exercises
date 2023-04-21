program fahrenheit_to_celsius;
var f, c: real;

begin
    read(f);
    c := (5 * f - 160) / 9;
    writeln(c:0:2);
    if 100 <= c then
        writeln('gasoso')
    else if 0 < c then
        writeln('liquido')
    else
        writeln('solido');
end.
