program salarios;
var n, faixa0_3, faixa4_9, faixa10_20, faixa20, total: real;

begin
    faixa0_3   := 0;
    faixa4_9   := 0;
    faixa10_20 := 0;
    faixa20    := 0;

    read(n);
    while 0 <> n do begin
        { o Free Pascal Compiler é inteligente o suficiente para evaluar
        constantes em compile-time? }
        if (450 * 4) > n then
            faixa0_3 := faixa0_3 + 1
        else if (450 * 10) > n then
            faixa4_9 := faixa4_9 + 1
        else if (450 * 20) > n then
            faixa10_20 := faixa10_20 + 1
        else
            faixa20 := faixa20 + 1;
        read(n);
    end;

    total := faixa0_3 + faixa4_9 + faixa10_20 + faixa20;

    { a fórmula geral é P = (faixa * 100) / total }
    writeln(((faixa0_3   * 100) / total):0:2);
    writeln(((faixa4_9   * 100) / total):0:2);
    writeln(((faixa10_20 * 100) / total):0:2);
    writeln(((faixa20    * 100) / total):0:2);
end.
