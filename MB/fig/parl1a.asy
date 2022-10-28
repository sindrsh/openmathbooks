import inh;
import figs;
unitsize(1cm);

real v = pi/24;
pair n = (cos(v),sin(v));

pair A = (0,0);
pair B = 2*n;

transform sh = shift(1,-0.5);
pair C = sh*A;
pair D = sh*(4*n);

draw(A--B);
draw(C--D);

dott(A,"$A$",SW);
dott(B,"$B$",NE);
dott(C,"$C$",SW);
dott(D,"$D$",NE);


