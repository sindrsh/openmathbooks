import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(5cm);

pair A = (0, 0);
pair B = (5, 1);
pair C = (2, 3);
pair D = intersectionpoint(C--C+(0, -10), A--B);
pair D2 = 1.4*B;
pair C2 = D2+C-D;
pair F = C-D;
pair Ep = D2+C-D;

filldraw(A--B--C2--cycle, arpeng);

Tri t = mktri(abs(C-B), abs(B), abs(C));
draw(C2--D2, dotted, L="$y$", align=E);
draw((C--D), dotted, L="$y$", align=E);
draw(C2--D2--B, dotted);
draw(A--C--B, dotted);
draw(C--Ep, blue);
dott(A, "$A$", SW);
dott(B, "$B$", S);
dott(C2, "$C$", N);
dott(D2, "$D$", S);
dott(C, "$C'$", N);
dott(D, "$D'$", S);

write(B.x*abs(C-D)/2, t.Ar);




