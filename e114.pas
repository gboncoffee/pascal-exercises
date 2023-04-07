program is_divisible_by_five;
var n: longint;

begin
    read(n);
    if (n mod 5 = 0) then
        writeln('SIM')
    else
        writeln('NAO');
end.
