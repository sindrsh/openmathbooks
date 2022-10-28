import inh;
import figs;
unitsize(0.5cm);

transform sh = shift(0.5,-3);

pair B = (3,0);
pair C = (2,2);
pair D = (-2,2);
draw(sh*(O--B--C--D--cycle));


