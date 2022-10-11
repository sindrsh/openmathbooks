import "../../inh" as inh;
import "../../geo" as geo;

unitsize(1cm);

pair A = (0,0);
pair B = (2,0);
pair Cm = (-2, 2);
pair C = intersectionpoint(B--B+5*(-sqrt(3),1), A--2*Cm);

A = rotate(-150,B)*A;
C = rotate(-150,B)*C;

draw(A--B--C--A);

label(A,"$A$", N);
label(B,"$B$", SW);
label(C,"$C$", SE);

write(abs(B-C));
write(abs(A-C)*sin(pi/12));
