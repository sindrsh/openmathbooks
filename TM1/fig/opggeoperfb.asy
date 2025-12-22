import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(1.28557521937, 1, 1);
t.mkR();
draw(t.A--t.B--t.C--t.A);
ds(t.Rs, t.R);

dv(t.B, t.C, t.A, sc=0.2, "$80^\circ$", E);
dott(t.Rs);
draw(t.C--t.Rs--t.B);

dv(t.Rs, t.B, t.C, sc=0.5, "$v$", S+0.5E);
