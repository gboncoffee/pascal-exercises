program is_divisible;
var x, y: longint;

begin
    read(x, y);
    if x mod y = 0 then
        writeln('SIM')
    else
        writeln('NAO');
end.
