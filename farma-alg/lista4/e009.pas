program populacoes;
uses Math;
var pa, pb, ta, tb, maior_p, maior_t, menor_p, menor_t: real;

begin
    read(pa, pb, ta, tb);
    
    { verifica qual maior e qual menor, não nos interessa qual das cidades é
    qual }
    if (pa > pb) then begin
        maior_p := pa;
        maior_t := ta;
        menor_p := pb;
        menor_t := tb;
    end
    else begin
        maior_p := pb;
        maior_t := tb;
        menor_p := pa;
        menor_t := ta;
    end;

    if (menor_t > maior_t) then
        {
        A fórmula é:

            n =       log(B) - log(A)
                log(1 + Ta) - log(1 + Tb)

        Onde B é a cidade maior e A a menor, com log de base x qualquer.
        }
        writeln(trunc(((log2(maior_p) - log2(menor_p)) / (log2(1 + menor_t) - log2(1 + maior_t))) + 1))
    else
        writeln(0);
end.
