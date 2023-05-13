program converte;
var n, count: longint;

function power(n, e: longint): longint;
begin
    power := 1;
    while 0 <> e do begin
        power *= n;
        e -= 1;
    end;
end;

function converte_em_decimal(n: longint): longint;
begin
    count := 0;
    converte_em_decimal := 0;
    while n <> 0 do begin
        if n mod 10 = 1 then
            converte_em_decimal += power(2, count);
        count += 1;
        n := n div 10;
    end;
end;

begin
    read (n);
    writeln (converte_em_decimal (n));
end.
