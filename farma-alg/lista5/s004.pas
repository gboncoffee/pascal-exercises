program mais_uma_soma_infinita;
var s, x, y, i, tmp: real;

begin
    s := 0;
    x := 1;
    y := 2;

    i := 10;
    while 0 < i do begin
        s += x / y;

        tmp := y + 2;
        y   := x + 2;
        x   := tmp;

        i -= 1;
    end;
    writeln(s:0:2);
end.
