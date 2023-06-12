program ocorrencias;
type vector = array [1..200] of longint;
var v1, v2: vector;
    n, m: longint;

{
A ideia eh fazer um "scanner", que vai percorrendo o vetor ate o final:

      V  V
    [ 1, 2, 3, 4 ]
         V  V
    [ 1, 2, 3, 4 ]
            V  V
    [ 1, 2, 3, 4 ]

Sempre verificando se os elementos equivalem
}
function n_subseq(var v1: vector; n: longint; var v2: vector; m: longint): longint;
var i, j: longint;
    eh_subseq: boolean;
begin

    n_subseq := 0;

    i := 1;
    while ((i - 1) + m) <= n do
    begin
        eh_subseq := true;
        j := 1;
        while eh_subseq and (j <= m) do
        begin
            if v2[j] <> v1[i + (j - 1)] then
                eh_subseq := false;
            j += 1;
        end;
        if eh_subseq then
            n_subseq += 1;
        i += 1;
    end;
end;

procedure le_vectors(var v1: vector; var n: longint; var v2: vector; var m: longint);
var i: longint;
begin
    read(n);
    read(m);
    for i := 1 to n do
        read(v1[i]);
    for i := 1 to m do
        read(v2[i]);
end;

begin
    le_vectors(v1, n, v2, m);
    writeln(n_subseq(v1, n, v2, m));
end.
