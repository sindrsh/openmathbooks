import inh;
import figs;
unitsize(0.5cm);

real r = 1.5;
real R = 1;
real d = 2;
pair S2 = (d,0);
real x = (d^2+r^2-R^2)/(2d);
real y = sqrt(r^2-x^2);
pair A = (x, y);
pair Am = (x,-y);

draw(scale(r)*unitcircle);
draw(shift(S2)*scale(R)*unitcircle);

dott(A,"$$",2N,p=blue);
dott(Am,"$$",2S,p=blue);

dott(O,"$$");
dott(S2,"$$");

draw(O--S2,dotted);



