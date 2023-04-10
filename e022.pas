program cartesian;
var x, y: longint;

begin
    read(x, y);
    if (0 = x) and (0 = y) then
        writeln('O')
    else if 0 = x then
        writeln('Y')
    else if 0 = y then
        writeln('X')
    else begin
        if 0 < x then begin
            if 0 < y then
                writeln(1)
            else
                writeln(4);
        end
        else begin
            if 0 < y then
                writeln(2)
            else
                writeln(3);
        end
    end
end.
