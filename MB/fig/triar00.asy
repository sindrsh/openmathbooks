import "../../inh" as inh;
import figs;
import tri;
unitsize(0.6cm);


int v = 0;
pair A = (0,0);
pair B = (5,0);
pair C = (0,3);
path p = A--B--C--cycle;
draw(rotate(v)*p);

draw(A--C, L="h\o yde",align=W);
draw(A--B, L="grunnlinje",align=S);
fill(p,arpen);
mksq2(A,C);



// %%%
transform sh = shift(6,0);
Tri t = mktri(3,4.5,5);
p = t.A--t.B--t.C--cycle;

draw(sh*p);
fill(sh*p,arpen);
draw(sh*(t.C.x, 0)--sh*t.C, dotted, L="h\o yde",align=1.5S+1.3W);
draw(sh*t.A--sh*t.B,L="grunnlinje",S);

mksq2(sh*(t.C.x, 0),sh*t.C);


// %%%
sh = shift(12,0);
pair A = (0,0);
pair B = (2,0);
pair C = (4,3);
path p = A--B--C--cycle;

draw(sh*p);
fill(sh*p,arpen);
draw(sh*A--sh*B, L="grunnlinje",align=S);
draw(sh*B--sh*(C.x,0)--sh*C,dotted,L=rotate(90)*Label("h\o yde", position=Relative(0.75)));
mksq2(sh*(C.x, 0),sh*t.A);



