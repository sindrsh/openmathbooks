import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;
size(5cm);

real c = 2;
real a = 1/cos(pi/180*55);

Tri t = mktri(a,c,a);



t.mkv();
t.v(r=0.2,al=0.5N+E);
t.v(2,r=0.2,al=0.5N+W);
t.v(3,r=0.2,al=S);

draw(t.A--t.B);
draw(t.A--t.C);
draw(t.C--t.B);

label("$\color{blue}55^\circ+55^\circ+70^\circ=180^\circ$",(1,1.8));



