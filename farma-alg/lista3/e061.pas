program somas_de_n;
var n, i: longint;

begin
    read(n);
    i := 1;
    while (n > i) do begin
        writeln(i, ' ', n - i);
        i := i + 1;
    end;
end.
