import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;
size(5cm);

Tri t = mktri(1,sqrt(3),2);



t.mkv();
t.v(r=0.4,al=0.5N+E);
t.v(2,r=0.2,al=0.5N+W);
mksq2(t.C,t.B);
//t.v(3,r=0.2,al=S);

draw(t.A--t.B);
draw(t.A--t.C);
draw(t.C--t.B);
label(t.C,"\color{blue}$90^\circ$",4S+0.3W);
label("$\color{blue}30^\circ+60^\circ+90^\circ=180^\circ$",(1,1));



