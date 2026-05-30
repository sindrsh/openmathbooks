import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

import figs;
size(6cm);


pair O = (0, 0);
pair A = (-1/sqrt(5), 0);
pair B = (1/sqrt(5), 0);
pair C = (1/sqrt(5), 2/sqrt(5));
pair D = (-1/sqrt(5), 2/sqrt(5));

filldraw(graph(f, 0, pi)--cycle, arpenr);
filldraw(A--C--D--cycle, white);
filldraw(A--C--D--cycle, arpen);
draw(A--B--C--D);
draw(O--C, dotted);
dott(O, "$S$", S);
dott(A, "$A$", S);
dott(B, "$B$", S);
dott(C, "$C$", NE);
dott(D, "$D$", NW);

