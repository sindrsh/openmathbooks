import "../../inh" as inh;
import "../../geo" as geo;

unitsize(1cm);

pair A = (0,0);
pair C = 2*f(pi/3);
pair B = (5,0);

draw(B--C);
draw(A--B,L="5");
draw(A--C,L="2",NW);
dv(B,C,A,"$60^\circ$",NE);

label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, N);

write(C.y);
