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

pair Ep = (2.5,2);

draw(t.A--Ep--D,dotted);
draw(t.B--Ep--t.C,dotted);

label(Ep,"$E$",2S);

/*
dv(t.B,D,t.A,"",sc=0.75,al=NE);
dv(t.A,t.C,t.B,"",sc=0.75,al=NW);
dv(t.B,D,t.C,"",sc=0.6,al=S+0.7W);
dv(t.C,t.A,D,"",sc=0.5,al=S+0.5E);

dv(t.C,D,Ep,"",sc=0.5);
dv(t.C,t.B,Ep,"",sc=0.4);
dv(t.B,t.A,Ep,"",sc=0.5);
dv(D,t.A,Ep,"",sc=0.4,D=(-2pi,0));
*/

