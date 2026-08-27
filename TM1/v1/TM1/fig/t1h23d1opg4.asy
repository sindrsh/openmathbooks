import "../../inhopg" as inh;
import "../../geo" as geo;

size(8cm);

real r = 6;
pair B = (6, 0);
pair C = rotate(150)*B;

dv(C, B, O, "$150^\circ$", N);
draw(O--B, L="6", S);
draw(O--C, L="6", SW);
draw(C--B);


pair O2 = (8,0);
pair B2 = O2 + (6,0);
pair C2 = shift(8,0)*rotate(32)*B;
dv(C2, B2, O2, "$32^\circ$", 0.5N+E, sc=1.2);
draw(O2--B2, L="6", S);
draw(O2--C2, L="6", NW);
draw(C2--B2);
