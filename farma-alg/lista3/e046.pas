program media_ponderada;
var n, p, soma, total: real;

begin
    soma  := 0;
    total := 0;
    read(n, p);
    while (n <> 0) and (p <> 0) do begin
        soma := soma + n * p;
        total := total + p;
        read(n, p);
    end;
    writeln((soma / total):0:2);
end.
