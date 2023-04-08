program birth;
var d, m, y, a: longint;

begin
    read(d, m, y);
    a := 2021 - y;
    if (((4 = m) and (29 < d)) or (4 < m)) then
        a := a - 1;
    writeln(a);
end.
