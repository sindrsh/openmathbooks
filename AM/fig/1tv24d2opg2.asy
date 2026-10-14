import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(3cm);


pair A = rotate(-60)*(1, 0);
pair B = rotate(-41.68)*(-1, 0);

fill(shift(B.x, A.y)*scale(A.x-B.x, -A.y)*unitsquare, arpen);

dv((0, 1), B, O, "$u$", N + 0.5W, black, sc=0.25);
dv((0, -1), A, O, "$v$", S + 0.25E, black, sc=0.25);

draw((B.x, 0)--(A.x, 0));
draw((0, B.y)--(0, A.y));

draw(B--O--A, Yellow);

