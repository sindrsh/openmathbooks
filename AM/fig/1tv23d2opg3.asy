import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(4cm);

pair B = (10, 0);
pair C = shift(B)*rotate(105)*(5, 0);

Tri t1 = mktri(5, abs(C), 10);
Tri t2 = mktri(9, 6, abs(C));
t1.mkv();
t2.mkv();
pair D = rotate(t1.vA)*t2.C;

filldraw(O--B--C--D--cycle, arpeng);

dv(C, O, B, "$75^\circ$", NW, red);
draw(O--B--C--D--cycle);
write(abs(D-C));
write(abs(D));

label(1/2*(O+D), "$6$", W);
label(1/2*(O+B), "$10$", S);
label(1/2*(B+C), "$5$", E);
label(1/2*(C+D), "$9$", N);

