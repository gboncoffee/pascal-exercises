program soma_de_quadrados;
var i, soma: longint;

{ 
    esse é o jeito errado de fazer isso, existe uma fórmula que faz em O(1):
    (n(2n + 1)(n + 1)) / 6

    mas a ideia do exercício é o acumulador
}

begin
    i := 1;
    soma := 0;
    while 50 >= i do begin
        soma := soma + (i * i);
        i := i + 1;
    end;
    writeln(soma);
end.
