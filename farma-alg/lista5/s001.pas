program wtf_soma_fracionaria;
var n, s, x, y: real;
    soma: boolean;

begin
    read(n);
    n    -= 1;
    s    := 1000;
    soma := false;
    x    := 997;
    y    := 2;

    while 0 < n do begin
        if soma then begin
            s += x / y;
            soma := false;
        end
        else begin
            s -= x / y;
            soma := true;
        end;

        x -= 3;
        y += 1;
        n -= 1;
    end;

    writeln(s:0:2);
end.
