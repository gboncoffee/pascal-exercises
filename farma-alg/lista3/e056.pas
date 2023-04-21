program soma_pares_entre_n_m;
var n, m, soma: longint;

begin
    read(n, m);

    soma := 0;
    m    := m - 2;
    if (n mod 2 = 1) then
        n := n - 1;

    repeat
        n := n + 2;
        soma := soma + n;
    until n >= m;

    writeln(soma);
end.
