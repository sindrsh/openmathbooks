import "../../inhopg" as inhopg;
size(4cm);

pair A = (0, 0);
pair B = (7, 0);
pair C = (7, 5);
pair D = (0, 5);

pair Ep = (3, 0);
pair F = (7, 4);
pair G = (2, 5);
pair H = (6, 0);
pair Ip = intersectionpoint(H--G, Ep--F);

filldraw(Ip--H--Ep--cycle, arpenr);
draw(A--B--C--D--A);
draw(Ep--F);
draw(G--H);
label("2", 1/2*(D+G), S);
label("1", 1/2*(H+B), N);
label("1", 1/2*(F+C), W);
label("3", 1/2*(A+Ep), N);

label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, NE);
label("$D$", D, NW);
