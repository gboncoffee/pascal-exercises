program banco;
var saldo: real;

begin
    repeat
        read(saldo);
        if 0 > saldo then
            writeln(saldo:0:2);
    until 0 = saldo;
end.
