import inh;
import figs;
unitsize(0.7cm);

real a = 5;
real h = 4;
real m = 5;
pair A = (0,0);
pair B = (a,0);
pair C = (3,h);

filldraw(A--B--C--cycle, blue+opacity(0.15));

label("grunnlinje", (2.5,0), align=S);
draw((C.x,0)--C, dotted, L=Label("h\o gde",align=W,position = Relative(0.3)));

mksq2((C.x,0),A);
