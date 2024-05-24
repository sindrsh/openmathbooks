import "../../inh" as inh;
import "../../geo" as geo;
size(4cm);

pair A = (0, 0);
pair B = (4, 0);
pair C = (0, 3);

mksq2(A, C);

draw(A--B, L="$a$", S);
draw(A--C, L="$b$", W);
draw(B--C);

dv(A, B, C, "$u$", SE);
dv(A, C, B, "$v$", 0.5N+W);
