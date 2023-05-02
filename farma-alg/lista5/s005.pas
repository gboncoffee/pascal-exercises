program outra_soma_infinita;
var s, n, d, i, tmp: real;

begin
    s := 0;
    n := 1;
    d := 3;

    i := 10;
    while 0 < i do begin
        s += n / d;

        tmp := 2 * d;
        d   := 2 * n;
        n   := tmp;

        i -= 1;
    end;
    writeln(s:0:2);
end.
