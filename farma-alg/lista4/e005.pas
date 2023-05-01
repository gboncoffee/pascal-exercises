program sequencia_piramidal_k_alternante;
var n, i, x, mod2, swapfactor, swapon: longint;
    piramidal: boolean;

begin
    read(n);
    read(x);
    mod2 := x mod 2;

    piramidal := true;

    swapfactor := 1;
    swapon     := 1;

    i := 1;
    while n > i do begin
        if swapon = swapfactor then begin
            if mod2 = 0 then
                mod2 := 1
            else
                mod2 := 0;

            swapon     += 1;
            swapfactor := 1;
        end
        else
            swapfactor += 1;

        read(x);
        if x mod 2 <> mod2 then
            piramidal := false;

        i += 1;
    end;

    if (swapon <> swapfactor) or (not piramidal) then
        writeln(0)
    else
        writeln(swapon);
end.
