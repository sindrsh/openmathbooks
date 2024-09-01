import inh;
import figs;
import tri;
unitsize(0.6cm);


int v = 0;
pair A = (0,0);
pair B = (5,0);
pair C = (0,3);
path p = A--B--C--cycle;
draw(rotate(v)*p);

draw(A--C, L="$h$",align=W);
draw(A--B, L="$g$",align=S);

mksq2(A,C);
fill(p,arpen);


// %%%
transform sh = shift(6,0);
Tri t = mktri(3,4.5,5);
p = t.A--t.B--t.C--cycle;
draw(sh*p);
draw(sh*(t.C.x, 0)--sh*t.C, dotted, L="$h$",align=W);
draw(sh*t.A--sh*t.B,L="$g$",S);

mksq2(sh*(t.C.x, 0),sh*t.C);
fill(sh*p,arpen);

// %%%
sh = shift(12,0);
pair A = (0,0);
pair B = (2,0);
pair C = (4,3);
path p = A--B--C--cycle;

draw(sh*p);

draw(sh*A--sh*B, L="$g$",align=S);
draw(sh*B--sh*(C.x,0)--sh*C,dotted,L=Label("$h$", position=Relative(0.75)));
mksq2(sh*(C.x, 0),sh*t.A);
fill(sh*p,arpen);


