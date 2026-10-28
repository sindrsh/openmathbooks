import "../../inh" as inh;
import three;
import solids;
size(3cm);
currentprojection = orthographic(6,7,4);

real r1 = 1.0;   // radius i bunnen (z = 0)
real r2 = 0.7;   // radius i toppen  (z = h)
real h  = 1;

// Sideflate: rett linje fra (r1,0,0) til (r2,0,h), dreiet rundt Z
revolution CoRev = revolution((r1,0,0)--(r2,0,h), Z);
draw(CoRev.silhouette(), black);

revolution CoRev = revolution((r1,0,0)--(r2,0,h), Z, -20, 150);
draw(scale3(r1)*unitcircle3, dashed);

draw((0,0,0)--(0,r1,0), L="$R$", NE);
draw((0,0,h)--(0,r2,h), L="$r$", NE);
draw((0,0,0)--(0,0,h), black+dotted);
dot((0,0,0));
dot((0,0,h));

label("$h$", (0,0,0.3h), W);
label("$s$", (0, 1.5, h));
