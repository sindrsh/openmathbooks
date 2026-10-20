import "../../inh.asy" as inh;
import "../../geo.asy" as geo;

size(6cm);
real s = 6;

pair B = (3s, 0);
pair C = (3s, 10);
pair D = C-(s, 0);
pair Ep = D-(0, s);
pair F = (0, 10-s);

mksq2(O, F);
mksq2(B, O);
mksq2(C, B);
mksq2(D, C);
mksq2(F, Ep);


filldraw(O--B--C--D--Ep--F--cycle, arpeng);
label("$2s$", 1/2*(F+Ep), N);
label("$s$", 1/2*(C+D), N);
label("$s$", 1/2*(D+Ep), W);
label("$10$", 1/2*(C+B), E);
