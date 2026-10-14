import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

Tri t1 = mktri(1, sqrt(2), sqrt(3-2*sqrt(2)*cos(105/180*pi)));



real dc = sqrt(2)/sin(pi/3)*sin(45/180*pi);

pair D = t1.C + dc*(t1.C-t1.B)/abs(t1.C-t1.B);

filldraw(t1.A--t1.B--D--cycle, arpen);
draw(t1.A--t1.B--t1.C--t1.A);
dv(t1.A, t1.B, t1.C, "$105^\circ$", sc=0.2, S, black);
dv(t1.A, t1.C, D, "$60^\circ$", sc=0.2, S, black);
dv(D, t1.C, t1.A, "$45^\circ$", sc=0.2, NE, black);

label("$1$", 1/2*(t1.B+t1.C), NE);
dott(t1.A, "$A$", SW);
dott(t1.B, "$B$", SE);
dott(t1.C, "$C$", NE);
dott(D, "$D$", N);
