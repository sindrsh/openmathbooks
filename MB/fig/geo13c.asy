import inh;
import figs;
import tri;
size(4cm);


real a = 5;
real b = 4;
real c = 6;

Tri t = mktri(a,b,c);

dv(t.A,t.C,t.B,"$v$",al=0.25N+W,sc=0.75);
dv(t.B,t.C,t.A,"$u$",al=+0.5N+E,sc=0.75);


draw(t.A--t.C,dotted);
draw(t.B--t.C,dotted);
draw(t.A--t.B);

dott(t.A,"$A$",SW);
dott(t.B,"$B$",SE);
dott(t.C,"$C$",NE);

label("$c$",t.A+1/2*t.B,align=S);



