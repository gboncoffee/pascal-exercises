program testa_se_primo;
var i, count: longint;

function eh_primo(n: longint): boolean;
begin
    count := 2;
    eh_primo := true;
    while eh_primo and (count <= sqrt(n)) do begin
        if n mod count = 0 then
            eh_primo := false;
        count += 1;
    end;
end;

begin
    for i:= 1 to 10000 do
        if eh_primo (i) then
            writeln (i);
end.
