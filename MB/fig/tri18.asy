import inh;
import figs;

unitsize(0.7cm);


real a = 10;
real b = 3;
real d = 4;
pair A = (0,b);
pair B = (d,0);
pair C = (a,b);
pair D = (0,0);

mksq2((a,0),B);

fill(D--B--C--cycle, blue+opacity(0.15));

draw(D--B--C--cycle);
draw(B--(a,0)--C, dotted);

label("3", (a,b/2), align=E);
label("4", (d/2,0), align=NE);
label("6", (d+(a-d)/2,0), align=N);


