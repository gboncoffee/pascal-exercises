program verifica_primo;
var n, i, v_parada: longint;
    e_primo: boolean;

begin
    read(n);

    v_parada := n div 2 + 1;
    i        := 2;
    e_primo  := true;

    if ((n = 1) or (n = 2)) then begin
        i := v_parada;
    end;

    while (i <> v_parada) do begin
        if (n mod i = 0) then begin
            i       := v_parada;
            e_primo := false;
        end
        else i += 1;
    end;

    if (e_primo) then
        writeln('SIM')
    else
        writeln('NAO');
end.
