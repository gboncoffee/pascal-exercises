program ordered;
uses Math;

var a, b, c, maxx, minn, other: real;
    i: longint;

begin
    read(i, a, b, c);

    maxx := max(a, max(b, c));
    minn := min(a, min(b, c));
    if (maxx = a) or (minn = a) then begin
        if (maxx = b) or (minn = b) then other := c;
        if (maxx = c) or (minn = c) then other := b;
    end
    else if (maxx = b) or (minn = b) then begin
        if (maxx = c) or (minn = c) then other := a;
    end;

    if 1 = i then
        writeln(minn:0:0, ' ', other:0:0, ' ', maxx:0:0)
    else if 2 = i then
        writeln(maxx:0:0, ' ', other:0:0, ' ', minn:0:0)
    else if 3 = i then begin
        if (maxx = a) then
            writeln(b:0:0, ' ', a:0:0, ' ', c:0:0)
        else if (maxx = b) then
            writeln(a:0:0, ' ', b:0:0, ' ', c:0:0)
        else if (maxx = c) then
            writeln(a:0:0, ' ', c:0:0, ' ', b:0:0);
    end
end.
