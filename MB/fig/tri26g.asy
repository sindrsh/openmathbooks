import inh;
unitsize(0.15cm);


real a = 13;
real b = 10;
pair o = (0,0);
pair M = (a,a);

transform sh = shift(0,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(sh*(o--(a,0)--(0,b)--cycle));
label("$a$", sh*(1/2*a,0), align=S);
label("$b$", sh*(0,1/2*b), align=W);
label("$c$", sh*(1/2*a,1/2*b), align=NE);
real L = 1.5;
draw(box((0,0), (L,L)));




