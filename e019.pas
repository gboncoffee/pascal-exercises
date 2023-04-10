program reprovacao;
var n1, n2, n3, f, m: real;

begin
    read(n1, n2, n3, f);
    if 10 <= f then
        writeln('NAO')
    else begin
        m := (n1 + n2 + n3) / 3;
        if 4 > m then
            writeln('NAO')
        else if 7 > m then
            writeln('TALVEZ')
        else
            writeln('SIM');
    end;
end.
