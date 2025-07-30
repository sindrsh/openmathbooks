import "../../inh" as inh;
import "../../geo" as geo;

size(6cm);

pair D = (2, 1);
pair Dz = 0.7*D;
pair O = (0, 0);
pair H = (D.x, 0);
pair Hz = (Dz.x, 0);

draw(O--D--H--O);
draw(O--D, blue, L=Label("$\vec{w}$", position=Relative(0.5), NW), arrow=Arrow);
draw(Dz--Hz, L="$z$", E);
draw(H--D, L="$h$", E);

mksq2(H, O);
mksq2(Hz, O);

dott(O, "$A$", SW);
dott(Dz, "$A_z$", NW);
dott(D, "$D$", NE);
dott(H, "$H$", S);
dott(Hz, "$H_z$", S);


