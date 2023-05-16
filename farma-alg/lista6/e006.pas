program compara_datas;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2: longint): boolean;
begin
    eh_anterior := true;
    if ano1 > ano2 then
        eh_anterior := false
    else begin
        if ano1 = ano2 then begin
            if mes1 > mes2 then
                eh_anterior := false
            else begin
                if mes1 = mes2 then begin
                    if dia1 >= dia2 then
                        eh_anterior := false;
                end;
            end;
        end;
    end;
end;

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh_anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.
