import inh;
unitsize(0.2cm);


real a = 15;
real b = 8;
pair o = (0,0);
pair M = (a,a);

transform sh = shift(0,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(sh*(o--(a,0)--(0,b)--cycle));
label("15", sh*(1/2*a,0), align=S);
label("$x$", sh*(0,1/2*b), align=W);
label("17", sh*(1/2*a,1/2*b), align=NE);
real L = 1.5;
draw(box((0,0), (L,L)));




