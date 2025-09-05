import "../../inh" as inh;
import figs;
unitsize(1cm);


real a = 10;
real b = 3;
real d = 4;
pair A = (0,b);
pair B = (d,0);
pair C = (a,b);
pair D = (0,0);

fill(D--B--C--cycle, arpen);
fill(A--D--(a,b)--cycle, arpeno);
fill((a,0)--C--B--cycle, arpeng);

draw(D--B--C);
draw(A--D--(a,b)--cycle);
draw((a,0)--C--B--cycle);

label("3", (a,b/2), align=E);
label("6", ((d+a)/2,0), align=N);
label("4", (d/2,0), align=NE);
label("10", (a/2,b), align=N);
