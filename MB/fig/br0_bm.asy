import inh;
unitsize(0.25 cm);
 

label("$\displaystyle 1:4= \frac{1}{4}$", (1,0.5), align=W);  

real a = 3;
real c = 1;
real b = 1.5;
draw((a,b)--(c,b), L=Label("Teller", p=black+fontsize(9pt),BeginPoint), Arrow(TeXHead));

real b = -0.5;
draw((a,b)--(c,b), L=Label("Nevner", p=black+fontsize(9pt),BeginPoint), Arrow(TeXHead));
