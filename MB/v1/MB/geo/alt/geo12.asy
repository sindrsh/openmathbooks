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

mksq2(H,t.A);
mksq2(Jp,t2.B);
mksq2(G,t.A);

draw(H--t.C,dotted);
draw(G--t2.A,dotted);
draw(Jp--t2.B,dotted);
draw(t.A--t.B--t.C--t.A);
draw(t2.A--t2.B--t2.C--t2.A);
//draw(t3.A--t3.B--t3.C--t3.A);

dott(t.A,"$A$",SW);
dott(t.B,"$B$",SE);
dott(t.C,"$C$",NE);

dott(t2.A,"$D$",W);
dott(t2.B,"$E$",E);

//dott(t3.A,"$D$",SW);
//dott(t3.B,"$E$",SE);
//dott(t3.C,"$F$",NE);

dott(H,"$H$",S);
dott(Jp,"$J$",S);
dott(G,"$G$",S);

label("$b'$",(t.C-(t.C-t2.A)/2),NW);
label("$a'$",(t.C-(t.C-t2.B)/2),E);




