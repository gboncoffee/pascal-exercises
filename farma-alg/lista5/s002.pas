program soma_de_fracoes;
var n, x, y, s: real;

begin
    read(n);
    s := 0;

    x := n - 1;
    y := 1;
    while y <> n do begin
        s += x / y;
        x -= 1;
        y += 1;
    end;
    writeln(s:0:2);
end.
