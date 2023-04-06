program seconds_to_time;
var seconds, minutes: longint;

begin
    read(seconds);
    minutes := (seconds mod 3600) div 60;
    writeln(seconds div 3600, ':', minutes, ':', seconds mod 60);
end.
