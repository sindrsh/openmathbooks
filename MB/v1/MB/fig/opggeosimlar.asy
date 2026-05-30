import "../../inhopg" as inhopg;
import "../../geo" as geo;
size(8cm);

pair l = (100, 0);

pair B = (5, 0);
pair Bb = shift(B)*rotate(140)*l;
pair Cc = rotate(20)*l;

pair C = intersectionpoint(O--Cc, B--Bb);


Tri t1 = mktri(abs(C), abs(B), abs(B-C));
Tri t2 = mktri(abs(B-C), abs(C), abs(B), 1.5);
draw(t1.A--t1.B--t1.C--t1.A);
t2.rors((3,0));

dv(t1.A, t1.B, t1.C, "$20^\circ$", S+0.5W,sc=1.5);
dv(t1.C, t1.A, t1.B, "$120^\circ$", 0.4N+0.15W, sc=0.25);
dv(t2.A, t2.B, t2.C, "$120^\circ$", S, sc=0.25);
dv(t2.C, t2.A, t2.B, "$40^\circ$", 0.5N+W, sc=0.6);

draw(t1.A--t1.B--t1.C--t1.A);
draw(t2.A--t2.B--t2.C--t2.A);

label(t1.A, "$A$", S);
label(t1.B, "$B$", S);
label(t1.C, "$C$", N);
label(t2.A, "$D$", S);
label(t2.B, "$E$", S);
label(t2.C, "$F$", N);

