import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

pair B = (2, 0);
pair C = (0, 1);

filldraw(O--B--C--cycle, arpen);
mksq2(O, C);
draw(O--C, L="$a$", W);
draw(O--B, L="$2a$");
draw(B--C, L="$c$");
