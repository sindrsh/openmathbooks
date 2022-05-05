import "../../inh" as inh;
import "../../geo" as geo;
defaultpen(fontsize(7 pt));
unitsize(2cm);

Tri t = mktri(1,sqrt(2),1);

draw(t.A--t.B--t.C--t.A);

mksq2(t.B, t.A);

//label("$A$", t.A, SW);
//label("$B$", t.B, SE);
//label("$C$", t.C, NE);
dv(t.C,t.B,t.A,"$45^\circ$",0.5N+E,sc=0.25);
dv(t.B,t.A,t.C,"$45^\circ$",S+0.4W,sc=0.25);

real sc = 1.2;
Tri t2 = mktri(sc*sqrt(3)/2,sc*1,sc*1/2);
t2.rors(sh=(2,0));

draw(t2.A--t2.B--t2.C--t2.A);

//label("$D$", t2.A, SW);
//label("$E$", t2.B, SE);
//label("$F$", t2.C, N);

mksq2(t2.B,t2.A,sc=0.7);

dv(t2.C,t2.B,t2.A,"$60^\circ$",0.5N+E,sc=0.25);
dv(t2.A,t2.B,t2.C,"$30^\circ$",S+0.15W,sc=0.35);

