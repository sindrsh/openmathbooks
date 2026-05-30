import "../../inhopg" as inhopg;

unitsize(0.4cm);

real a = 6;
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
filldraw(H--F--Jp--D--cycle, arpenr);
filldraw(G--B--Ep--F--cycle, arpeng);

label("$a^2$",1/2*(F+D));
label("$b^2$",1/2*(F+B));
label("$ab$", 1/2*(F));
label("$ab$", 1/2*(F+C));



