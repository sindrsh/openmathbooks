import "../../inh.asy" as inh;

size(2cm);

real a = 3;
real b = 2;
filldraw(scale(a+b)*unitsquare, arpeng);
filldraw(shift(a, 0)*scale(b)*unitsquare, white);
filldraw(shift(a, 0)*scale(b)*unitsquare, arpenr);

label("$a$", (a/2, 0), N);
label("$b$", (a+b/2, 0), N);
