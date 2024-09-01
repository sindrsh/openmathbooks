import inh;
import figs;
unitsize(1cm);


real b = 5;
real h = 2;
pair A = (0,0);
pair B = (b,0);
pair D = (2,h);
pair C = (2+b,h);

filldraw(A--B--C--D--cycle,arpenc);

label((string) b, (b/2,0), align=S);
draw((b,0)--(b,h), dotted, L=(string) h,align=E);
mksq2((b,0),A);
