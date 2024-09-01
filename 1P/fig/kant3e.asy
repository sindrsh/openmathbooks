import inh;
import figs;
unitsize(0.5cm);

pair B = (3,0);
pair C = (2,2);
pair D = (1,3);

transform sh = shift(3,-7);

B = (3,0);
C = (3,2);
D = (0,2);
draw(sh*(O--B--C--D--cycle));





