import "../../inhopg" as inh;
import "../../geo" as geo;
size(6cm);

pair A = (0, 0);
pair B = (7,0);
pair C = (6, 3);
pair D = (4, 3);
pair Ep = (4, 0);

filldraw(A--B--C--D--cycle, arpenr);
mksq2(Ep, D);
draw(Ep--D, dotted);

label(1/2*(Ep+D), "3", W);
label(1/2*B, "7",S);
label(1/2*(D+C), "$x$", N);
