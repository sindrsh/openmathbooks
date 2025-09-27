import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 6;
int b = 3;
mkgrid((0,a),(0,b));

pair A = (0, 0);
pair B = (6, 1);
pair C = (2, 3);

filldraw(A--B--C--cycle, arpeng);

dott(A,"$A$",W);
dott(B,"$B$",E);
dott(C,"$C$",N);

