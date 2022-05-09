import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;


Tri t = mktri(3,5,4);

draw(t.A--t.B);
draw(t.A--t.C);
draw(t.C--t.B);

mksq2(t.B,t.A);
label("$90^\circ$",t.B,3NW,blue);





