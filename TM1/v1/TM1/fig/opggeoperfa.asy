import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(sqrt(2-sqrt(3)), 1, 1);
t.mkR();
draw(t.A--t.B--t.C--t.A);
ds(t.Rs, t.R);

dv(t.B, t.C, t.A, sc=0.2, "$30^\circ$", E);
dott(t.Rs);
draw(t.C--t.Rs--t.B);

dv(t.Rs, t.B, t.C, sc=0.1, "$v$", S);
