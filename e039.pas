program sum_of_even;
var n, p, i: longint;

begin
    read(n);
    p := 1;
    for i := 1 to n do begin
        p := p * i * 2;
    end;
    writeln(p);
end.
