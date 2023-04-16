program calcula_media;
var sum, prox, n: real;

begin
    read(prox);
    n := 0;
    while prox <> 0 do begin
        sum := sum + prox;
        n   := n + 1;
        read(prox);
    end;
    if (n <> 0) then
        writeln((sum / n):0:5)
    else
        writeln(0);
end.
