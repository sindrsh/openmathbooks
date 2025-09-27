import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 6;
int b = 3;
mkgrid((0,a),(0,b));

pair A = (0, 0);
pair B = (4, 0);
pair C = (6, 3);
pair D = (2, 3);

filldraw(A--B--C--D--cycle, arpen);
draw(A--C, dotted);

dott(A,"$D$",S);
dott(B,"$E$",S);
dott(C,"$F$",N);
dott(D,"$G$",N);

