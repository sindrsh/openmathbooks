import "../../inh" as inh;
import figs;
unitsize(0.7cm);


real a = 5;
real h = 4;
real m = 5;
pair A = (0,0);
pair B = (a,0);
pair C = (3,h);

filldraw(A--B--C--cycle, arpen);

label("5", (2.5,0), align=S);
draw((C.x,0)--C, dotted, L="4");

mksq2((C.x,0),A);
