program salary_raise;
var salary, code, new_salary: real;

begin
    read(salary, code);

    if 101 = code then
        new_salary := salary * 1.1
    else if 102 = code then
        new_salary := salary * 1.2
    else if 103 = code then
        new_salary := salary * 1.3
    else
        new_salary := salary * 1.4;

    writeln(salary:0:2);
    writeln(new_salary:0:2);
    writeln((new_salary - salary):0:2);
end.
