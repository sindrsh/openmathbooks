import inh;
import figs;
import tri;
unitsize(1cm);
import tri;

real a = 2;
real b = 4;
real c = 5;
Tri t = mktri(a,b,c);

label("$A$", align=SW);
label("$B$", t.B, align=SE);
label("$C$", t.C, align=N);

dv(t.B,t.C,t.A,"$u$",0.25N+E,sc=1);
dv(t.A,t.C,t.B,"$v$",0.25N+W,sc=0.5);
dv(t.A,t.B,t.C,"$w$",S,sc=0.3);
draw(t.A--t.B--t.C--t.A);

real sc = 0.7;
Tri t = mktri(sc*2,sc*4,sc*5);

t.rors(sh=(c+1.5,0));

dv(t.B,t.C,t.A,"$u$",0.25N+E,sc=1);
dv(t.A,t.C,t.B,"$v$",0.25N+W,sc=0.5);
dv(t.A,t.B,t.C,"$w$",S,sc=0.3);

draw(t.A--t.B--t.C--t.A);
label("$D$", t.A,align=SW);
label("$E$", t.B, align=SE);
label("$F$", t.C, align=N);


