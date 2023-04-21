program piraporinha_credit_line;
var s, p: real;

begin
    read(s, p);
    if s * 0.3 < p then
        writeln('NAO')
    else
        writeln('SIM');
end.
