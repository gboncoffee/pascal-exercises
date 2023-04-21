program price;
var code: longint;
    q: real;

begin
    read(code);
    read(q);
    case code of
        1001 : writeln((5.32 * q):0:2);
        1324 : writeln((6.45 * q):0:2);
        6548 : writeln((2.37 * q):0:2);
        0987 : writeln((5.32 * q):0:2);
        7623 : writeln((6.45 * q):0:2);
    else
        writeln('ERRO');
    end;
end.
