program is_between_twenty_and_ninety;
var n: longint;

begin
    read(n);
    if (20 < n) and (90 > n) then
        writeln('SIM')
    else
        writeln('NAO');
end.
