import "../../inh" as inh;
import "../../geo" as geo;

unitsize(1cm);

Tri t = mktri(2, 3.5, 4);


dott(t.A, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NE);


dv(t.C, t.B, t.A, "$\angle A$", 0.5N+E,sc=0.6);
dv(t.C, t.A, t.B, "$\angle B$", 0.5N+W, sc=0.3);
draw(t.A--t.B--t.C--t.A);



