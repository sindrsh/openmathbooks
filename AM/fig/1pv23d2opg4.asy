import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(5cm);

xaks(0, 3, l="vekt (kg)");
yaks(0, 3, l="pris (kr)");

pair A = (0.3, 0.8);
pair B = (1, 0.6);
pair C = (2.1, 0.8);
pair D = 2.7*B;
pair Ep = (1.8, 1.75);
pair F = (1, 2.5);

dott(A, "$A$", N);
dott(B, "$B$", N);
dott(C, "$C$", S);
dott(D, "$D$", E);
dott(Ep, "$E$", N);
dott(F, "$F$", N);

