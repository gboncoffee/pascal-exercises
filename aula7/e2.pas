program coordenadas;
var x, y: real;
    n, i: longint;

begin
    read(n);

    i := 1;
    while i <= n do begin
        read(x, y);

        if (0 = x) then begin
            if (0 = y) then
                writeln('Origem')
            else
                writeln('Sobre o eixo Y');
        end
        else begin
            if (0 = y) then
                writeln('Sobre o eixo X')
            else begin
                if (0 < x) then begin
                    if (0 < y) then
                        writeln('Quadrante 1')
                    else
                        writeln('Quadrante 4');
                end
                else
                    if (0 > y) then
                        writeln('Quadrante 3')
                    else
                        writeln('Quadrante 2');
            end;
        end;

        i := i + 1;
    end;
end.
