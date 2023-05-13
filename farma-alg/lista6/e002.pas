program testa_binario;
var n: longint;

function eh_binario(x: longint): boolean;
begin
    eh_binario := true;
    while x > 0 do begin
        if (x mod 10 <> 0) and (x mod 10 <> 1) then
            eh_binario := false;
        x := x div 10;
    end;
end;

begin
    read (n);
    if eh_binario (n) then
        writeln ('sim')
    else
        writeln ('nao');
end.
