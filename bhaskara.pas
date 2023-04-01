program bhaskara;
var a, b, c, delta_sqrt, da: real;

begin
    write ('Enter a value: ');
    read (a);
    write ('Enter b value: ');
    read (b);
    write ('Enter c value: ');
    read (c);

    delta_sqrt:= sqrt (b * b - 4 * a * c);
    da:= 2 * a;

    writeLn (((-b) + delta_sqrt) / da);
    writeLn (((-b) - delta_sqrt) / da);
end.
