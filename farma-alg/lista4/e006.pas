program numeros_perfeitos;
var k, n, soma, i: longint;

begin
    read(k);
    n := 6;

    while (0 < k) do begin
        soma := 1;
        i    := 2;
        while (i <= (n div 2)) do begin
            if (n mod i = 0) then
                soma += i;
            i += 1;
        end;
        if (soma = n) then begin
            write(n, ' ');
            k -= 1;
        end;
        n += 2;
    end;

    writeln;
end.
