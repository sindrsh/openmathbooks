import "../../inhopg" as inh;
import "../../geo" as geo;

size(6cm);

pair B = (0,1);
pair C = (-1,1);
pair D = (-1,0);
pair Ep = (-1-sqrt(3)/2, 1/2);

dv(O,B,Ep,"$v$",E);

draw(D--Ep--C--B--O--D--C);

draw(O--Ep--B,red);

label("$A$", O, SE);
label("$B$", B, NE);
label("$C$", C, N);
label("$D$", D, S);
label("$E$", Ep, W);
