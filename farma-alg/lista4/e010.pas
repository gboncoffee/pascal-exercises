program triangular;
var n, sqv: real;

begin
    read(n);
    sqv := sqrt(8 * n + 1);
    if (sqv) - trunc(sqv) = 0 then
        writeln(1)
    else
        writeln(0);
end.
