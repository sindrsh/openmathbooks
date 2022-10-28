import inh;
import figs;
import tri;

unitsize(0.5cm);

Tri t = mktri(5,7,6);

draw(t.A--t.B--t.C--cycle);

label(t.A,"$A$",SW);
label(t.B,"$B$",SE);
label(t.C,"$C$",NE);
