import inh;
import figs;

unitsize(1 cm);

pair A = (0,0);
pair B = (2,0);

pair C = (1,-0.25);
pair D = (1,1);
pair Cm = (C.x,0);

mksq2(Cm,D);

draw(A--B);
draw(C--D);

dott(A,"$A$",W);
dott(B,"$B$",E);
dott(C,"$C$",S);
dott(D,"$D$",N);



