import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;

real c = 2;
real a = 1/cos(pi/180*70);

Tri t = mktri(a,a,c);

draw(t.A--t.B);
draw(t.A--t.C,2NW);
draw(t.C--t.B,2NE);

dv(t.C,t.B,t.A,"$$",NE,sc=0.3);
dv(t.C,t.A,t.B,"$$",NW,sc=0.3);






