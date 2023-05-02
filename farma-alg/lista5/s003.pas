program soma_infinita;
var s, n, d, i: real;

begin
    s := 1;
    n := 2;
    d := 3;

    i := 4;
    while i > 0 do begin
        s += n / d;

        n += d;
        d += n;
        i -= 1;
    end;
    writeln(s:0:2);
end.
