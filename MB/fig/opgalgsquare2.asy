import "../../inhopg" as inhopg;

unitsize(0.5cm);

real a = 4;
pair A = (0,0);
pair B = (a,0);
pair C = (a, a);
pair D = (0, a);

real s = 0.6;
pair Ep = (a, s*a);
pair F = ((1-s)*a, s*a);
pair G = (F.x, 0);
pair H = (0, Ep.y);
pair Jp = (F.x, a);
draw(A--B--C--D--A);
filldraw(G--B--Ep--F--cycle, arpeng);

label("$b^2$",1/2*(F+B));
draw(A--D, L="$a$", W);



