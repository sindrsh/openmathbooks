import figs;
import tri;
import drwgrph;
import inh;


unitsize(0.75cm);

pair A = (1,2);
pair D = (1,1);
pair B = (3,0);
pair C = (0,4);
pair F = (4,5);
pair G = (4,-1);

path p = O..B--C--cycle;

pair n = (3,2);

transform r = shift(n);
pair Am = r*A;
pair Bm = r*B;
pair Cm = r*C;
pair Dm = r*D;
pair Gm = r*G;
pair Fm = r*F;
pair Om = r*O;

mkgrid((-1,7),(-1,7));

draw(p);
draw(r*p); 

draw(B--Bm,blue+dashed,arrow=EndArrow);
draw(C--Cm,blue+dashed,arrow=EndArrow);
draw(O--Om,blue+dashed,arrow=EndArrow);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NW);

dott(Bm, "$B'$", SE);
dott(Cm, "$C'$", NW);
dott(Om, "$A'$", NW);
