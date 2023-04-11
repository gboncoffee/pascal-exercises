program sum_of_odd;
var n, i, s: longint;

begin
    read(n);
    s := 0;
    for i := 1 to n do begin
        s := s + (i * 2 - 1);
    end;
    writeln(s);
end.
