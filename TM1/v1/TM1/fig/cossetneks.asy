import "../../inh" as inh;
import "../../geo" as geo;

size(4cm);

pair C = (1, sqrt(3));
pair B = C+(sqrt(3), -sqrt(3));


dv(B,C,O, "$60^\circ$", sc=0.25, NE);

draw(O--B--C--O);
label("$2$", 1/2*C, NW);
label("$1+\sqrt{3}$", 1/2*B, S);
label("$x$", B+1/2*(C-B), NE);
