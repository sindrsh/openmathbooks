import inh;
import figs;
import tri;
size(7cm);


real a = 5;
real b = 4;
real c = 6;

Tri t = mktri(a,b,c);

draw(t.A--t.B--t.C--t.A);

label(t.A,"$A$",SW);
label(t.B,"$B$",SE);
label(t.C,"$C$",N);

t.rors(sh=(10,0));

draw(t.A--t.B--t.C--t.A);

label(t.A,"$D$",SW);
label(t.B,"$E$",SE);
label(t.C,"$F$",N);



