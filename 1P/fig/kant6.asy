import inh;
import figs;
import tri;

unitsize(0.6cm);

Tri t = mktri(5,7,6);
pair D = (2,4);

draw(t.A--t.B--t.C--D--cycle);

label(t.A,"$A$",SW);
label(t.B,"$B$",SE);
label(t.C,"$C$",NE);
label(D,"$D$",NW);

dv(t.B,D,t.A,"$$",sc=0.75,NE);
dv(t.A,t.C,t.B,"$$",sc=0.75,NW);
dv(t.B,D,t.C,"$$",sc=0.6,S+0.7W);
dv(t.C,t.A,D,"$$",sc=0.5,S+0.5E);



