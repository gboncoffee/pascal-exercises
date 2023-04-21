program credit;
var s: real;

begin
    read(s);
    writeln(s:0:0);
    if 200 >= s then
        writeln('0')
    else if 400 >= s then
        writeln('20%')
    else if 600 >= s then
        writeln('30%')
    else
        writeln('40%');
end.
