import "../../inh" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(9,5.5,4);
pair D = (t.C.x,0);


draw(t.A--t.B--t.C--t.A);


label(t.A,"$A$", SW);
label(t.B,"$B$", SE);
label(t.C,"$C$", NW);
