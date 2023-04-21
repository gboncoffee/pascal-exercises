program maior_multiplo_de_7;
var n, max: longint;

begin
    max := 0;

    repeat
        read(n);
        if n mod 7 = 0 then
            if n > max then
                max := n;
    until 0 = n;

    if 0 <> max then
        writeln(max);
end.
