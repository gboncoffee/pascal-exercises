program wtf;
var i, j, k: longint;

begin
    read(i, j, k);
    if (j mod i = 0) and (k mod j = 0) then
        writeln(i + k + j)
    else
        if (i + 1 = j) and (i + 2 = k) then
            writeln(k, ' ', j, ' ', i)
        else
            writeln((i + k + j) div 3);
end.
