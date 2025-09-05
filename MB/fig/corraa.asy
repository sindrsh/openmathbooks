import "../../inh" as inh;
import "../../geo" as geo;
size(5cm);

pair A = (-5, 0);
pair B = (5, 0);
pair C = (4, 2);
pair D = (-4, -3);
pair Ep = (A.x, -1);
pair F = (B.x, -3);
pair G = intersectionpoint(A--B, D--C);
pair H = intersectionpoint(Ep--F, D--C);

dv(C, B, G,"", green, sc=1);
dv(A, D, G,"", green, sc=1, D=(-2pi, 0));
dv(C, F, H, "", blue, sc=1);

draw(A--B);
draw(C--D, red);
draw(Ep--F);

dott(A, "$A$", W);
dott(B, "$B$", E);
dott(C, "$C$", NE);
dott(D, "$D$", SW);
dott(Ep, "$E$", W);
dott(F, "$F$", E);
dott(G, "$G$",NW);
dott(H, "$H$", S);

