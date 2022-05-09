import figs;
import tri;
import drwgrph;
import inh;


unitsize(0.75cm);

pair B = (4,0);
pair C = (0,3);

path p = O..B--C--cycle;

pair n = (0,5);

pair A = (5,-1);
pair D = A+n;

transform r = shift(n);

pair Bm = r*B;
pair Cm = r*C;
pair Om = r*O;

mkgrid((-1,6),(-1,4));

draw(p);
draw(A--D,blue+dashed);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NW);

