import "../../inhopg" as inh;

size(6cm);

pair O = (0, 0);
pair B = (4, 0);
pair C = (5, 2);
pair D = (-1, 3);

pair v = -D/2;
pair u = B/2;
pair w = (C-B)/2;

pair vp = (-v.y, v.x);
pair up = (-u.y, u.x);
pair wp = (-w.y, w.x);

draw(O--B--C--D--O);

filldraw(O-- -2vp-- -2vp-2v -- D--cycle, arpenr);
filldraw(O-- -2up -- -2up+2u--B--cycle, arpeny);
filldraw(B-- B-2wp -- B-2wp+2w--C--cycle, arpeng);
filldraw(C-- C+2vp+2up+2wp -- C+2vp+2up+2wp-2u-2v-2w--D--cycle, arpen);

pair A1 = 1/2*(D-2vp);
pair A2 = 1/2*(B-2up);
pair A3 = 1/2*(B+B-2wp+2w);
pair A4 = 1/2*(C+C+2vp+2up+2wp-2u-2v-2w);

draw(A1--A3);
draw(A2--A4);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
dott(D, "$D$", NW);

dott(A1, "$E$", W);
dott(A2, "$F$", S);
dott(A3, "$G$", E);
dott(A4, "$H$", N);


write(A1, -v-vp);
write(A2, u-up);
write(A3, 2u+w-wp);
write(A4, -v+u+w+vp+up+wp);

