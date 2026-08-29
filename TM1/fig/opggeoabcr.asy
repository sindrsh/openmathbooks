import "../../inhopg.asy" as inhopg;
import "../../geo.asy" as geo;

size(7cm);

Tri t = mktri(3, 5, 7);
t.mkt();

ds(t.rs, t.r);

mksq2(t.Dt, t.A);
mksq2(t.Et, t.B);
mksq2(t.Ft, t.rs);

draw(t.Dt--t.rs, blue, L="$r$");
draw(t.Et--t.rs, blue);
draw(t.Ft--t.rs, blue);

draw(t.A--t.B--t.C--t.A);
draw(t.A--t.rs, dotted);
draw(t.B--t.rs, dotted);
draw(t.C--t.rs, dotted);

dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", N);
dott(t.rs, "$S$", E);

label("$a$", 1/2*(t.B+t.C), NE);
label("$b$", 1/2*(t.A+t.C), NW);
label("$c$", 1/2*(t.A+t.B), S);
