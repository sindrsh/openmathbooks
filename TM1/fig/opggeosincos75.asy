import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(5cm);

pair B = (sqrt(3)+1, 0);
pair C = (sqrt(3)+1, sqrt(3));
pair D = (0, sqrt(3));
pair Ep = (sqrt(3), 0);
pair F = (0, 1);

mksq2(Ep, F);

dv(Ep, C, F, "$45^\circ$", sc=0.3, E);
dv(Ep, F, C, "$45^\circ$", sc=0.3, SW);
//dv(C, D, F, "$75^\circ$", sc=0.2, NE);
dv(F, D, C, "$15^\circ$", sc=0.6, 0.25S+W, D=(2pi, 0));

draw(Ep--C--F--Ep);
draw(O--B--C--D--O);

label("$2$", 1/2*(Ep+F), SW);
label("$2$", 1/2*(Ep+C), SE);
