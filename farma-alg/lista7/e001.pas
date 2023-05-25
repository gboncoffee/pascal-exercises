program vetor_real;
var vec: array [1..200] of real;
    sp, sn: real;
    n, i: longint;

begin
    read(n);
    if 0 = n then
        writeln('vetor vazio')
    else begin

        i := 1;
        while n >= i do begin
            read(vec[i]);
            i += 1;
        end;

        { soma os positivos nas posicoes pares }
        sp := 0;
        i  := 2;
        while n >= i do begin
            if 0 < vec[i] then
                sp += vec[i];
            i += 2;
        end;

        { soma os negativos nas posicoes impares }
        sn := 0;
        i  := 1;
        while n >= i do begin
            if 0 > vec[i] then
                sn += vec[i];
            i += 2;
        end;

        if 0 = sn then
            writeln('divisao por zero')
        else
            writeln((sp / sn):0:2);
    end;
end.
