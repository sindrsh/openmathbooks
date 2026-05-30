import "../../inhopg" as inh;
import "../../geo" as geo;

size(6cm);

pair O = (0,0);
pair B = (5,0);
pair C = (2,3);
pair D = (5,1);
pair D1 = intersectionpoint(O--D,B--B+(-D.y, D.x));
pair D2 = intersectionpoint(O--D,C--C-(-D.y, D.x));

mksq2(D2,C);
mksq2(D1,B);

draw(O--B--C--O);
draw(O--D1,blue);
draw(B--D1,deepgreen);
draw(C--D2,Cyan);

Tri A = mktri(abs(C-B),abs(C),abs(B));

real q = abs(B-D1);
real r = abs(C-D2);
real s = abs(D2);
real t = abs(D1);
write(2A.Ar, r*t+q*s);

dott(O,"$A$",SW);
dott(B,"$B$",SE);
dott(C,"$C$",NW);
dott(D1,"$D$",NE);
dott(D2,"$E$",SE);
