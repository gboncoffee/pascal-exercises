program ir;
var s: real;

begin
    read(s);
    if 540 > s then
        writeln('NAO')
    else if 1424 >= s then
        writeln('1 ', '0.00')
    else if 2150 >= s then
        writeln('2 ', (s * (7.5 / 100)):0:2)
    else if 2866 >= s then
        writeln('3 ', (s * (15 / 100)):0:2)
    else if 3582 >= s then
        writeln('4 ', (s * (22.5 / 100)):0:2)
    else
        writeln('5 ', (s * (27.5 / 100)):0:2);
end.
