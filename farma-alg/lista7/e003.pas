program vetor_ordenado;
type vector = array[1..200] of longint;
var n, i, l, x: longint;
    v: vector;
    ordenado: boolean;

procedure imprime_vetor_inverso(var vec: vector; n: longint);
begin
    for i := n downto 2 do
        write(vec[i], ' ');
    writeln(vec[1]);
end;

begin
    ordenado := true;

    read(n);
    if 0 = n then
        writeln('vetor vazio')
    else begin
        read(x);
        l    := x;
        v[1] := x;

        for i := 2 to n do begin
            read(x);
            if x < l then
                ordenado := false;

            l    := x;
            v[i] := x;
        end;

        if ordenado then
            writeln('sim')
        else
            writeln('nao');

        imprime_vetor_inverso(v, n);
    end;
end.
