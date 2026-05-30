import "../../inhopg" as inhopg;
size(3cm);

pair A = (0, 0);
pair B = (4, 0);
pair C = (4, 4);
pair D = (0, 4);

pair Ep = (0, 1);
pair F = (3, 4);
pair G = (4, 2);

pair H = intersectionpoint(Ep--F, D--G);
draw(A--B--C--D--A);
draw(Ep--F);
draw(D--G);
filldraw(D--Ep--H--cycle, arpen);
filldraw(Ep--G--H--cycle, arpenr);
filldraw(H--F--D--cycle, arpeng);

label("3", 1/2*(Ep+D), E);
label("3", 1/2*(D+F), S);
label("2", 1/2*(B+G), W);
label("4", 1/2*(A+B), N);

