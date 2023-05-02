program cansei_de_somas_infinitas;
var n, d, s: real;
    i: longint;

begin
    n := 1;
    d := 2;

    s := 0;

    i := 1;
    while 10 >= i do begin
        if i mod 2 = 0 then
            s += (n * 10) / d
        else
            s -= n / (d * 10);

        n += 2;
        d += 2;

        i += 1;
    end;

    writeln(s:0:2);
end.
