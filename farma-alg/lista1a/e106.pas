program cube_or_square;
var n: longint;

begin
    read(n);
    if 0 <= n then
        writeln(n*n*n)
    else
        writeln(n*n);
end.
