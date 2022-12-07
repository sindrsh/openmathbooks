import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;
unitsize(4cm);

Tri t = mktri(1,1,1);

draw(t.A--t.B);
draw(t.A--t.C,2NW);
draw(t.C--t.B,2NE);

dv(t.C,t.B,t.A,"$60^\circ$",sc=0.2);
dv(t.A,t.B,t.C,"$60^\circ$",S,sc=0.2);
dv(t.C,t.A,t.B,"$60^\circ$",W,sc=0.2);






