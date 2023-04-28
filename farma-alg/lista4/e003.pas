program pares_quadrado;
var n, ultimo_quadrado: longint;
    ok: boolean;

begin
    ok := true;

    read(n);
    while (0 <> n) do begin
        ultimo_quadrado := n*n;
        read(n);
        if (n <> ultimo_quadrado) then
            ok := false;
        read(n);
    end;

    if (ok) then
        writeln(1)
    else
        writeln(0);
end.
