import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(4cm);

real a = 6;
real b = 2;

pair A = (0, 0);
pair B = (a, 0);
pair C = (a, a);
pair D = (0, a);
pair Ep = (a-b, 0);
pair F = (a, b);
pair G = (a-b, b);
pair H = (a-b, a);

filldraw(A--Ep--H--D--cycle, arpeng);
filldraw(G--F--C--H--cycle, arpeng);
draw(Ep--B--F--G--Ep);

label("$a$", 1/2*(A+D), E);
label("$b$", 1/2*(Ep+B), N);
