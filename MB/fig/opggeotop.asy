import "../../inhopg" as inhopg;
import "../../geo" as geo;
size(4cm);

pair C = (8, 6);
pair Ep = (5, 10);
pair B = intersectionpoint(C--C+10*(C-Ep), O--(50, 0));
pair D = intersectionpoint(C--2*C, Ep--(50, 10));

draw(O--D--Ep--B--O);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", E);
dott(D, "$D$", NE);
dott(Ep, "$E$", NW);

label(1/2*B, "50", S);
label(1/2*(Ep+D), "25", S);
label(1/2*C, "40", SE);
write(abs(C-Ep));
write(abs(B));

