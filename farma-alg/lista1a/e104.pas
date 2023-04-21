program shorter;
var x, y: longint;

begin
    read(x, y);
    if y < x then x := y;
    writeln(x);
end.
