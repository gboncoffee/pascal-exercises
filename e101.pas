program revert_three_digit_number;
var n: longint;

begin
    read(n);
    writeln(
        n mod 10,
        (n div 10) mod 10,
        n div 100
    );
end.
