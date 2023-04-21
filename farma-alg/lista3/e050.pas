program divisoes_sequenciais;
var x, y, i: longint;

begin
    read(x, y);
    i := 0;
    while x mod y = 0 do begin
        x := x div y;
        i := i + 1;
    end;

    writeln(i);
end.
