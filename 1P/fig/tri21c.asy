import inh;
import figs;
unitsize(1cm);


real b = 3;
real h = 2;
pair A = (0,0);
pair B = (b,0);
pair D = (1,h);
pair C = (1+b,h);

draw(A--B--C--D--cycle);
draw(A--C);
fill(A--B--C--cycle,blue+opacity(0.3));
fill(A--D--C--cycle,deepgreen+opacity(0.3));
label("$g$", (b/2,0), align=S);
draw((b/1.25,0)--(b/1.25,h), dotted, L="$h$",align=SE);
mksq2((b/1.25,0),A);


