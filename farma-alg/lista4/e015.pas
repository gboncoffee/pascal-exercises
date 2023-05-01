program eu_nao_tanko_mais_essa_linguagem;
var n, m, s: longint;

begin
    read(n);
    m := n * 37;
    s := 0;
    while 0 <> m do begin
        s += m mod 10;
        m := m div 10;
    end;
    if s = n then
        writeln('SIM')
    else
        writeln('NAO');
end.
