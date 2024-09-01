import figs;
import tri;
import drwgrph;
import inh;


size(8cm);

pair A = (1,2);
pair D = (1,1);
pair B = (3,A.y);
pair C = (0,4);
pair F = (4,5);
pair G = (4,-1);

path p = O..D..A--B--C--cycle;

transform r = reflect(G,F);
pair Am = r*A;
pair Bm = r*B;
pair Cm = r*C;
pair Dm = r*D;
pair Gm = r*G;
pair Fm = r*F;
pair Om = r*O;

mkgrid((-1,9),(-1,5));

draw(p);
draw(r*p); 
draw(F--G,blue);

dott(A, "$A$", NW);
dott(B, "$B$", NE);
dott(C, "$C$", NW);
dott(D, "$D$", W);
dott(O, "$E$", SW);

dott(Am, "$A'$", NE);
dott(Bm, "$B'$", NW);
dott(Cm, "$C'$", NE);
dott(Dm, "$D'$", E);
dott(Om, "$E'$", SE);

