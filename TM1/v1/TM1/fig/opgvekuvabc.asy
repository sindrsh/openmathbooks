import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm);

pair O = (0, 0);
pair D = (3, 0);
pair u = D;
pair w = (-1, 3);
pair C = u+2*w;
pair B = 4*u;
pair Ep = u+w; 
pair F = B+1/3*(C-B);
pair v = F-B;

draw(O--B--C--O);
draw(D--C);

draw(O--D, arrow=Arrow, blue, L="$\vec{u}$");
draw(B--F, arrow=Arrow, blue, L="$\vec{v}$");

dott(O, "$A$", SW);
dott(B, "$B$", S);
dott(C, "$C$", N);
dott(D, "$D$", S);
dott(Ep, "$E$", W);
dott(F, "$F$", NE);

write(F, 4u+v);
write(C-B, 3v);
write(C, 4u+3v);
write(C-D, 3*(u+v));
write(Ep, u+3/2*(u+v));














