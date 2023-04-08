program foo;
var n, c, d, u: longint;

begin
    read(n);
    u := n mod 10;
    d := (n mod 100) div 10;
    c := n div 100;
    writeln(n, (c + (3 * d) + (5 * u)) mod 7);
end.
