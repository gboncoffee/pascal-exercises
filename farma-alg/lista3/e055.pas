program n_em_m;
var n, m, i: longint;

begin
    read(n, m);
    i := 0;
    while (10 <= m) do begin
        if (m mod 10) = n then
            i := i + 1;
        m := m div 10;
    end;
    if (m mod 10) = n then
        i := i + 1;

    if 0 <> i then
        writeln(i)
    else
        writeln('NAO');
end.
