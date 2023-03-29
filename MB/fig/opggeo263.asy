import "../../inhopg" as inh;
import "../../geo" as geo;
size(10cm);

pair B = (0,2);
pair C = (6, 0);
pair D = C+(3,0);
pair Ep = D+(0,-1);

mksq2(O, B);
mksq2(D,Ep);

label(1/2*(O+C), "6", N);
label(1/2*(D+Ep), "1", E);
label(1/2*(O+B), "2", W);
draw(B--Ep--D--O--B);
write(abs(B-Ep), sqrt(3^2+9^2));
draw(B--Ep,red);
