import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 6;
int b = 2;
mkgrid((0,a),(0,b));

pair A = (0, 0);
pair B = (2, 0);
pair C = (6, 2);
pair D = (2, 2);
pair Q = (6, 0);
pair R = (0, 2);

filldraw(A--B--C--D--cycle, arpen);
draw(A--Q--C--R--A);

dott(A,"$H$",S);
dott(B,"$I$",S);
dott(C,"$J$",N);
dott(D,"$K$",N);
dott(Q, "$Q$", S);
dott(R, "$R$", N);
