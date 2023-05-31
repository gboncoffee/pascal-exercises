program maximiza_soma;
{ nao tem problema de busca entao nao tem espaco pra sentinela }
type vector = array[1..200] of longint;
var v: vector;
    n: longint;

{ retorna o numero de numeros lidos no array }
function le_n_numeros(var v: vector): longint;
var i: longint;
begin
    read(le_n_numeros);
    { na vida real precisariamos assertar que o numero eh <= que 200 }
    for i := 1 to le_n_numeros do
        read(v[i]);
end;

function soma_subseq(var v: vector; i: longint; e: longint): longint;
begin
    soma_subseq := 0;
    for i := i to e do
        soma_subseq += v[i];
end;

function maior_soma(var v: vector; tam: longint): longint;
var ini, ed, s: longint;
begin
    { comeca como a soma de uma subseq de so o primeiro elemento }
    maior_soma := v[1];
    for ini := 1 to tam do
    begin
        for ed := 1 to tam do
        begin
            s := soma_subseq(v, ini, ed);
            if s > maior_soma then
                maior_soma := s;
        end;
    end;
end;

begin
    n := le_n_numeros(v);
    writeln(maior_soma(v, n));
end.
