program media;
var n, x, i, sum: real;

begin
    read(n);
    sum := 0;
    i := 0;
    while n > i do begin
        read(x);
        sum += x;
        i := i + 1;
    end;
    writeln((sum / n):0:2);
end.
