import inh;
import figs;
unitsize(0.5cm);

pair B = (3,0);
pair C = (2,2);
pair D = (1,3);

transform sh = shift(-3,-7);

B = (1,0);
C = B+f(pi/6);
D = f(pi/6);
draw(sh*scale(2)*(O--B--C--D--cycle));




