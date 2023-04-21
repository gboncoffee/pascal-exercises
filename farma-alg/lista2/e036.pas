program walls;
var tipe, area, boxarea: longint;

begin
    read(tipe, area);

    { convert the m2 area to cm2 }
    area := area * 10000;

    { I hope Free Pascal is smart enough to eval theese at compile-time }
    boxarea := 50 * 10;
    if 1 = tipe then
        boxarea := boxarea * 40
    else if 2 = tipe then
        boxarea := boxarea * 60
    else if 3 = tipe then
        boxarea := boxarea * 80;

    if 0 < (area mod boxarea) then
        write((area div boxarea) + 1)
    else
        write((area div boxarea));
    writeln(' caixas');
end.
