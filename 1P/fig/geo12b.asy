import inh;
import figs;
import tri;
size(6cm);


real a = 5;
real b = 7;
real c = 6;
real s = 0.4;

Tri t = mktri(a,b,c);
Tri t2 = mktri(a,b,c, sc=s);
Tri t3 = mktri(a,b,c, sc=s);

t2.rors(sh=(t.C*(1-s)));
t3.rors(sh=(8,0));

pair H = (t.C.x,0);
pair G = (t2.A.x,0);
pair Jp = (t2.B.x,0);


draw(t.A--t.B--t.C--t.A);
//draw(t2.A--t2.B--t2.C--t2.A);
draw(t3.A--t3.B--t3.C--t3.A);
draw(t2.A--t2.B,dotted);

dott(t.A,"$A$",SW);
dott(t.B,"$B$",SE);
dott(t.C,"$C$",NE);

dott(t2.A,"$D'$",W);
dott(t2.B,"$E'$",E);

dott(t3.A,"$D$",SW);
dott(t3.B,"$E$",SE);
dott(t3.C,"$F$",NE);

label("$e$",(t.C-(t.C-t2.A)/2),NW);
label("$d$",(t.C-(t.C-t2.B)/2),E);

label("$e$",(t3.C-(t3.C-t3.A)/2),NW);
label("$d$",(t3.C-(t3.C-t3.B)/2),E);
label("$f$",(t3.A+(t3.B-t3.A)/2),S);



