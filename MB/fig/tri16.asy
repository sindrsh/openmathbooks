import inh;
import figs;

unitsize(0.7cm);


int v = 0;
pair A = (0,0);
pair B = (5,0);
pair C = (0,3);
path p = A--B--C--cycle;
draw(rotate(v)*p);

draw(A--C, L="$3$",align=W);
draw(A--B, L="$5$",align=S);

mksq2(A,C);

filldraw(p,blue+opacity(0.15));




