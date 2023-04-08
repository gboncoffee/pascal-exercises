program ilumination_power;
var a: longint;

begin
    read(a);
    if 6 >= a then
        writeln(100)
    else
        writeln(80 + (a - 3) * 15);
end.
