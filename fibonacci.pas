program fibonacci;
var n, s, a, b, i, tmp: longint;

begin
    read(n);
    s := 0;
    a := 0;
    b := 1;

    for i := 1 to n do begin
        s := s + a;

        { computes the sequence itself }
        tmp := b;
        b := a + b;
        a := tmp;
    end;

    writeln(s);
end.
