program compactacao;
type vector = array[1..101] of longint;
var orig: vector;
    n: longint;

function idx(var vec: vector; n, busca: longint): longint;
begin
    vec[n + 1] := busca;
    idx := 1;
    while vec[idx] <> busca do
        idx += 1;
    if idx > n then
        idx := 0;
end;

procedure imprime_vec(var vec: vector; n: longint);
var i: longint;
begin
    for i := 1 to (n - 1) do
        write(vec[i], ' ');
    writeln(vec[n]);
end;

procedure imprime_vecs(var vec: vector; n: longint);
var i, c_n: longint;
    compact: vector;
begin
    c_n := 1;
    compact[1] := vec[1];
    for i := 2 to n do
    begin
        if 0 = idx(compact, c_n, vec[i]) then
        begin
            c_n += 1;
            compact[c_n] := vec[i];
        end;
    end;

    write('O: ');
    imprime_vec(vec, n);
    write('C: ');
    imprime_vec(compact, c_n);
end;

function le_vec(var vec: vector): longint;
var i: longint;
begin
    read(le_vec);
    for i := 1 to le_vec do
        read(vec[i]);
end;

begin
    n := le_vec(orig);
    while 0 <> n do
    begin
        imprime_vecs(orig, n);
        n := le_vec(orig);
    end;
end.
