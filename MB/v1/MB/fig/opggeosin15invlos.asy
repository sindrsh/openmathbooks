import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

real a = 1;
real b = a*sin(pi/12);
real c = sqrt(a^2-b^2);
real d = b^2/c;

Tri t = mktri(a,b,c);
t.mkvec();
real s = a*b/c;

pair D = (d, 0);
pair Ep = t.C-s*t.BC;
pair F = (Ep.x, 0);

mksq2(F,O);

draw(O--t.B--t.C--cycle^^O--D--t.C--cycle, deepgreen);
draw(D--Ep--F,dotted);

dott(O, "$A$", SW);
dott(t.B, "$B$", SE);
dott(t.C, "$C$", NW);
dott(D, "$D$", S);
dott(Ep, "$E$", NE);
dott(F, "$F$", S);

write((a-s)^2, ((s/sqrt(2))^2+(c-d-s/sqrt(2))^2));
write(d*b+sqrt(3)/2*s^2+1/2*s^2+s/sqrt(2)*s*(c-d-s/sqrt(2)), c*b);

write(1/sqrt(2)*s,b*(c-d-s/sqrt(2))/c);
write(s/sqrt(2)*b,d*(a-s));

write(abs(F-t.B));
write(c*b/a);

/*
Tri t2 = mktri(abs(t.C-D), b, d);
Tri t3 = mktri(s,s,s);
Tri t4 = mktri(abs(D-Ep),abs(D-F), abs(Ep-F));
Tri t5 = mktri(abs(F-t.B), abs(E-))
*/
