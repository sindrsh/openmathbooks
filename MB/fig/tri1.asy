import inh;
import figs;
import tri;

unitsize(0.75cm);

Tri t = mktri(3.5,5,6);

label("$A$", align=SW);
label("$B$", t.B, align=SE);
label("$C$", t.C, align=N);

dv(t.B,t.C,t.A,"$u$",0.25N+E,sc=0.75);
dv(t.A,t.C,t.B,"$v$",0.25N+W,sc=0.5);
dv(t.A,t.B,t.C,"$w$",S,sc=0.4);

draw(t.A--t.B--t.C--t.A);

// %%%%%
real sc = 0.7;
Tri t = mktri(sc*3.5,sc*5,sc*6);
t.mkv();
t.rors(rot=(180-t.vA),sh=(11.5,0));

dv(t.B,t.C,t.A,"$u$",0.25N+W,sc=0.75,D=(-2pi,0));
dv(t.A,t.C,t.B,"$v$",S+0.25E,sc=0.5);
dv(t.A,t.B,t.C,"$w$",NE,sc=0.4);
draw(t.A--t.B--t.C--t.A);

label("$D$", t.A,align=SE);
label("$E$", t.B, align=NW);
label("$F$", t.C, align=SW);




