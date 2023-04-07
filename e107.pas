program is_divisible_by_three;
var n: longint;

begin
    read(n);
    if n mod 3 = 0 then
        writeln('SIM')
    else
        writeln('NAO');
end.
