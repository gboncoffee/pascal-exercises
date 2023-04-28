program le_numeros_ate_que_seja_metade_ou_dobro;
var x, y, i, sum: longint;
    kontinue: boolean;

begin
    read(x);
    sum := x;
    i   := 1;

    kontinue := true;
    while kontinue do begin
        read(y);
        i   += 1;
        sum += y;
        if ((x * 2) = y) or ((x div 2 = y) and (x <> 1)) then
            kontinue := false
        else
            x := y;
    end;
    writeln(i, ' ', sum, ' ', x, ' ', y);
end.
