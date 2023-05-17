program contrario;
var n,m: longint;

function contrario(n, m: longint): boolean;
var n_cont: longint;
begin
    n_cont := 0;

    while n <> 0 do begin
        n_cont *= 10;
        n_cont += n mod 10;
        n      := n div 10;
    end;

    contrario := true;
    if n_cont <> m then
        contrario := false;
end;

begin
    read (n,m);
    if contrario (n,m) then
        writeln (n,' eh o contrario de ',m)
    else
        writeln (n,' nao eh o contrario de ',m);
end.
