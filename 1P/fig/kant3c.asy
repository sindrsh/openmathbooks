import inh;
import figs;
unitsize(0.5cm);

pair B = (3,0);
pair C = (2,2);
pair D = (1,3);



transform sh = shift(-0.5,-5);

B = (4,0);
C = (6,1);
D = (2,1);
draw(sh*(O--B--C--D--cycle));


