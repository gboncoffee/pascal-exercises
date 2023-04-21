program poligono_regular;
var fst, l: real;
    i: longint;
    is_reg: boolean;

begin
    read(l);
    fst    := l;
    i      := 0;
    is_reg := true;
    while (l <> 0) do begin
        i := i + 1;
        if l <> fst then
            is_reg := false;
        read(l);
    end;
    if (is_reg) and (3 <= i) then
        writeln('SIM')
    else
        writeln('NAO');
end.
