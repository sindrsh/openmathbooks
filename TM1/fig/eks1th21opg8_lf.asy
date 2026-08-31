import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm);

pair C = (-1, sqrt(3));
pair B = (4, 0);


dv(B,C,O, "$120^\circ$", sc=0.25, al=2NE);

draw(O--B--C--O);
label(O, "$A$", S);
label(C, "$C$", NW);
label(B, "$B$", SE);
label(1/2*B, "4", S);
label(1/2*C, "2", SW);

write(abs(B-C));
