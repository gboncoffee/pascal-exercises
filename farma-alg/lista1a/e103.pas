program stair_height;
var cos, d, h: real;

begin
    read(cos, d);
    h := d / cos;
    writeln(sqrt(h*h - d*d):0:3);
end.
