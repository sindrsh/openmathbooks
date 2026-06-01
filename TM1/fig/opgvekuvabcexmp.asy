import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(7cm);

pair O = (0, 0);
pair D = (3, 0);
pair u = D;
pair w = (-1, 2);
pair C = u+2*w;
pair B = 5*u;
pair F = B+1/4*(C-B);
pair v = F-B;

draw(O--B--C--O);
draw(D--C);

draw(O--D, arrow=Arrow, blue, L="$\vec{u}$");
draw(F--B, arrow=Arrow, blue, L="$\vec{v}$", align=N);

dott(O, "$A$", SW);
dott(B, "$B$", S);
dott(C, "$C$", N);
dott(D, "$D$", S);
dott(F, "$F$", NE);

write(C, 5u+4v);















