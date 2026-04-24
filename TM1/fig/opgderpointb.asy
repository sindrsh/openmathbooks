import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(7cm);

pair B = (4, 8-4*sqrt(3));
pair C = (4-(1+8-4*sqrt(3)), -1);

pair B1 = 1.1*B;
pair O1 = -0.25*B;

dv(O, C, B, "$30^\circ$", SW);
dv(B, (1,0), O, "$15^\circ$",sc=1.5, 0.25N+E);

draw(O1--B1, green);
label(B1, "$\vec{v}$", NE);
draw(B--C);

xaks(-1, 4);
yaks(-1.1, 1.5);


dott(O, "$O$", NW);
dott(B, "$B$", N);
dott(C, "$C$", S);


real b = abs(B);
real a = abs(C);
real c = abs(B-C);

write(a^2-c^2-b^2);
