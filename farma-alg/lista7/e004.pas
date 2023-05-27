program sequencia;
type vector = array [1..201] of longint;
var nums, n_nums: vector;
    tam: longint;

function acha_sem_ordem(n: longint; var nums: vector; tam: longint): longint;
begin
    nums[tam + 1] := n;
    acha_sem_ordem := 1;
    while nums[acha_sem_ordem] <> n do
        acha_sem_ordem += 1;
    if acha_sem_ordem > tam then
        acha_sem_ordem := 0;
end;

procedure imprime_vec(var vec: vector; var tam: longint);
var i: longint;
begin
    for i := 1 to (tam - 1) do
        write(vec[i], ' ');
    writeln(vec[tam]);
end;

procedure info_nums(var nums, n_nums: vector; var tam: longint);
var i: longint;
begin
    for i := 1 to (tam - 1) do
    begin
        if 1 = n_nums[i] then
            writeln(nums[i], ' ocorre ', n_nums[i], ' vez')
        else
            writeln(nums[i], ' ocorre ', n_nums[i], ' vezes');
    end;
    if 1 = n_nums[tam] then
        writeln(nums[tam], ' ocorre ', n_nums[tam], ' vez')
    else
        writeln(nums[tam], ' ocorre ', n_nums[tam], ' vezes');
end;

procedure le_numeros(var nums, n_nums: vector; var tam: longint);
var x, n, i, idx: longint;
begin
    tam := 0;
    read(n);

    for i := 1 to n do
    begin
        read(x);
        idx := acha_sem_ordem(x, nums, tam);
        if 0 = idx then
        begin
            tam         += 1;
            nums[tam]   := x;
            n_nums[tam] := 1;
        end
        else
            n_nums[idx] += 1;
    end;
end;

procedure mostra_info(var nums, n_nums: vector; tam: longint);
begin
    if 1 = tam then
        write('a sequencia tem ', tam, ' numero distinto: ')
    else
        write('a sequencia tem ', tam, ' numeros distintos: ');
    imprime_vec(nums, tam);
    info_nums(nums, n_nums, tam);
end;

begin
    le_numeros(nums, n_nums, tam);
    if 0 = tam then
        writeln('vetor vazio')
    else
        mostra_info(nums, n_nums, tam);
end.
