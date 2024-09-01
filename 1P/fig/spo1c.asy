import figs;
import tri;
import drwgrph;
import inh;


unitsize(0.75cm);

pair B = (4,0);
pair C = (0,3);

path p = O..B--C--cycle;

pair n = 2*(C-B);

pair A = (8,0);
pair D = A+n;

transform r = shift(n);

pair Bm = r*B;
pair Cm = r*C;
pair Om = r*O;

mkgrid((-1,8),(-1,6));

draw(p);
draw(A--D,blue+dashed);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NW);

