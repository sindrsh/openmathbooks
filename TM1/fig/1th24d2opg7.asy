import "../../inh" as inh;

size(6cm);

real x = 10;
real y = 50-2x-sqrt(2)*x;

pair O = (0, 0);
pair A = (x, 0);
pair B = (y+x, 0);
pair C = (y+2x, 0);
pair D = (y+x, x);
pair Ep = (x, x);

filldraw(O--A--B--C--D--Ep--O--cycle, arpeng);
draw(Ep--A);
draw(B--D);

label("$x$", 1/2*(O+A), N);
label("$x$", 1/2*(A+Ep), W);
label("$x$", 1/2*(B+C), N);
label("$x$", 1/2*(B+D), W);
label("$y$", 1/2*(A+B), N);
label("$y$", 1/2*(D+Ep), N);
