program is_divisble_by_three_and_seven;
var n: longint;

begin
    read(n);
    if (n mod 3 = 0) and (n mod 7 = 0) then
        writeln('SIM')
    else
        writeln('NAO');
end.
