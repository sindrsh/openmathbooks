import inh;
import figs;
import tri;
size(8cm);


real a = 5;
real b = 4;
real c = 6;

Tri t = mktri(a,b,c);

draw(t.A--t.B--t.C--t.A);

label(t.A,"$A$",SW);
label(t.B,"$B$",SE);
label(t.C,"$C$",N);

label("$a$",t.B+1/2*(t.C-t.B),align=NE);
label("$b$",t.A+1/2*t.C,align=NW);
label("$c$",t.A+1/2*t.B,align=S);

t.rors(sh=(10,0));

draw(t.A--t.B--t.C--t.A);

label(t.A,"$D$",SW);
label(t.B,"$E$",SE);
label(t.C,"$F$",N);
label("$a$",t.B+1/2*(t.C-t.B),align=NE);
label("$b$",t.A+1/2*(t.C-t.A),align=NW);
label("$c$",t.A+1/2*(t.B-t.A),align=S);



