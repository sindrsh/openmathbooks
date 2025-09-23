import "../../inhopg" as inh;
import "../../geo" as geo;
size(7cm);

pair A = (0, 0);
pair B = (8,0);
pair C = (5, 4);
pair D = (3, 4);
pair Ep = (5, 0);

filldraw(A--B--C--D--cycle, arpen);
mksq2(Ep, C);
draw(Ep--C, dotted);

label(1/2*Ep, "5",N);
label(1/2*(Ep+B), "3", N);
label(1/2*(D+C), "$2$", N);
label(1/2*(C+B), "$5$", NE);
