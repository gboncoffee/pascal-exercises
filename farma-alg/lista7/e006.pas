program wtf_database;
type vector = array [1..200] of real;

procedure imprime_vector(var data: vector; var usado: longint);
var i: longint;
begin
    if 0 = usado then
        writeln('vazio')
    else begin
        for i := 1 to (usado - 1) do
            write((data[i]):0:1, ' ');
        writeln((data[usado]):0:1);
    end;
end;

{ retorna TRUE caso o elemento esteja no vector. Caso nao esteja, idx eh setado
para o ultimo 'beg', ou seja, o elemento mais perto logo abaixo }
function busca_binaria(n: real; usado: longint; var idx: longint; var data: vector): boolean;
var beg, ed: longint;
begin
    beg := 1;
    ed  := usado;
    idx := ((ed - beg) div 2) + beg;
    busca_binaria := false;
    { eu sei que isso eh nojento pra krl, desculpa }
    if 1 = usado then
    begin
        if data[1] = n then
            busca_binaria := true;
        idx := 1;
    end
    else
    begin
        while (ed - 1 > beg) and (not busca_binaria) do
        begin
            if data[idx] = n then
                busca_binaria := true
            else
            begin
                if data[idx] > n then
                    ed := idx
                else
                    beg := idx;
            end;
            idx := ((ed - beg) div 2) + beg;
        end;

        { jeito nojento de lidar com casos de borda (porem necessario). se isso
        fosse feito com recursao e subarrays seria muito mais elegante }
        if (ed - 1 = beg) then
        begin
            if data[ed] = n then
            begin
                busca_binaria := true;
                idx := ed;
            end
            else
                if data[beg] = n then
                begin
                    busca_binaria := true;
                    idx := beg;
                end;
        end;
    end;
end;

{ retorna TRUE em caso de ERRO }
function adiciona_ordenado(n: real; var data: vector; var usado: longint): boolean;
var i: longint;
begin

    { evitamos adicionar mais que o limite de cara }
    if 200 < (usado + 1) then
        adiciona_ordenado := true
    else
    begin
        adiciona_ordenado := false;

        usado += 1;
        if 1 = usado then
            data[1] := n
        else
        begin

            { loopamos o array comecando por cima, jogando todos os valores uma
            posicao para frente ate encotrarmos a posicao certa
            precisamos lidar com casos de borda }
            if data[usado - 1] <= n then
                data[usado] := n
            else
            begin
                for i := (usado - 1) downto 1 do
                begin
                    data[i + 1] := data[i];
                    if data[i - 1] <= n then
                    begin
                        data[i] := n;
                        break;
                    end;
                end;
            end;
        end;
    end;
end;

{ retorna TRUE em caso de ERRO }
function remove_ordenado(n: real; var data: vector; var usado: longint): boolean;
var idx, i: longint;
begin
    if not busca_binaria(n, usado, idx, data) then
        remove_ordenado := true
    else begin
        remove_ordenado := false;

        { joga todos os elementos seguintes para tras, efetivamente removendo do
        idx. precisa evitar o caso de borda de ser o ultimo elemento }
        if idx <> usado then begin
            for i := idx to usado do
                data[i] := data[i + 1];
        end;
        usado -= 1;
    end;
end;

{ o retorno eh garantidamente 0, 1 ou 2 }
function le_comando(): longint;
var c: longint;
begin
    repeat
        read(c);
    until (0 = c) or (1 = c) or (2 = c);
    le_comando := c;
end;

procedure roda_database();
var comando, usado: longint;
    data: vector;
    operando: real;
    erro: boolean;
begin
    { inicializa data }
    usado := 0;
    erro := false;

    { main loop }
    comando := le_comando();
    while 0 <> comando do
    begin
        { comandos }
        if 1 = comando then
        begin
            read(operando);
            erro := adiciona_ordenado(operando, data, usado);
        end
        { a fodase isso deveria ser tipo um switch case, se nao vira Lisp tlgd }
        else if 2 = comando then
        begin
            read(operando);
            erro := remove_ordenado(operando, data, usado);
        end;

        { tratamento }
        if erro then
            writeln('erro')
        else
            imprime_vector(data, usado);

        erro    := false;
        comando := le_comando();
    end;
    imprime_vector(data, usado);
end;

begin
    roda_database();
end.
