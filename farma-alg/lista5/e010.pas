program soma_racional_exponencial;
uses Math;
var x, s: real;
    n, count: longint;

begin
    read(n, x);
    count := 0;
    s := 0;
    repeat
        if 0 = (count mod 3) then
            s -= (x ** (count * 4)) / 6
        else begin
            if 2 = (count mod 3) then
                s += (x ** (count * 4)) / 2
            else
                s += (x ** (count * 4));
        end;

        count += 1;
    until n = count;
    
    writeln(s:0:2);
end.
