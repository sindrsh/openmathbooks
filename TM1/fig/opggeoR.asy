import "../../inh" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(3,5,6);
t.mkR();

ds(t.Rs, t.R);

draw(t.A--t.C, L="$b$", NW);
draw(t.A--t.B, L="$c$", S);
draw(t.C--t.B, L="$a$",SW);

label(t.A,"$A$", SW);
label(t.B,"$B$", SE);
label(t.C,"$C$", NE);
