import inh;
import figs;
unitsize(0.5 cm);

real b = 7;
real c = 4;
real v = pi/6;

pair A = (0,0);
pair B = (c,0);
pair C = b*f(v);

path p = A--B--C--cycle;
draw(p);

real sc = 2;
transform sh = shift(21,0);
transform rot = rotate(150);
pair D = sh*rot*(0,0);
pair Ep = sh*rot*(sc*c,0);
pair F = sh*rot*(sc*b*f(v));

path p1 = D--Ep--F--cycle;
draw(p1);

label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,NE);

label("$D$",D,SE);
label("$E$",Ep,N);
label("$F$",F,SW);

label("$7$",A+1/2*(C-A),NW);
label("$4$",A+1/2*(B-A),S);

label("$7$",A+1/2*(C-A),NW);
label("$4$",A+1/2*(B-A),S);

label("$14$",F+1/2*(D-F),S);
label("$8$",D+1/2*(Ep-D),NE);

write(abs(Ep-D),abs(F-D));
dv(B,C,A,"$30^\circ$",sc=1.5,al=E+0.25N);
dv(Ep,F,D,"$30^\circ$",sc=2,al=W+0.5N);


