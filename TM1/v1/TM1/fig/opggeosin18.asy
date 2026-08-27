import "../../inh" as inh;
import "../../geo" as geo;

defaultpen(fontsize(7pt));
unitsize(3cm);

real a = 1;
real s = (sqrt(5)-1)/4;


Tri t = mktri(a,a,2s);

draw(t.A--t.B--t.C--t.A);

pair D = t.B/2;
pair Ep = t.A+s*t.C;

//mksq2(D,t.A,sc=0.7);
//draw(D--t.C,dotted);
draw(Ep--t.B,Cyan);

dv(t.B,t.C,t.A,"$72^\circ$",sc=0.1,NE);
dv(t.A,Ep,t.B,"$36^\circ$",sc=0.15,0.5N+W);
dv(t.C,Ep,t.B,"$36^\circ$",sc=0.12,N+0.5W);
