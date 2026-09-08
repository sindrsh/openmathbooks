import "../../inhopg" as inh;
import "../../geo" as geo;

size(7cm);

real a = 1;

Tri t = mktri(2a, sqrt(3)*2a, 2a);

Tri t = mktri(2a, sqrt(3)*2a, 2a);
pair A = rotate(75)*t.A;
pair B = rotate(75)*t.B;
pair C = rotate(75)*t.C;
pair D = (-sqrt(2)*3a, 0);

draw(A--B--C--A);
draw(A--D--C);

dott(A, "$B$", S);
dott(B, "$C$", NE);
dott(C, "$D$", N);
dott(D, "$A$", S);

dv(C, A, D, "$45^\circ$");
dv(D, C, A, "$75^\circ$", al=NW);
dv(A, C, B, sc=0.3, "$120^\circ$", D=(2*pi, 0), al=SW);

draw(C--B, L="$2a$", NE);
draw(A--B, L="$2a$", E);

write(abs(A-B)+abs(B-C)+abs(C-D)+abs(D-A), (7+3*sqrt(2)+sqrt(3))*a);

