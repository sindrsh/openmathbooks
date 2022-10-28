import inh;
import figs;
import tri;

unitsize(0.25cm);

Tri t = mktri(5,7,6);
pair D = (2,4);

draw(t.A--t.B--t.C--D--cycle);

label(t.A,"$A$",SW);
label(t.B,"$B$",SE);
label(t.C,"$C$",NE);
label(D,"$D$",NW);

draw(t.B--D,blue);
draw(t.A--t.C,blue);
