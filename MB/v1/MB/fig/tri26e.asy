import "../../inh" as inh;
unitsize(0.15cm);

real a = 8;
real b = 15;
pair o = (0,0);
pair M = (a,a);
filldraw(o--(a,0)--M--(0,a)--cycle, arpenr);
filldraw(M--(a+b,a)--(a+b,a+b)--(a,a+b)--cycle, arpenp);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle, dotted);
label("$a^2$", (1/2*a,1/2*a));
label("$b^2$", (a+1/2*b,a+1/2*b));

transform sh = shift(31,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), dotted);
filldraw(sh*B, arpen);

label("$c^2$", sh*(1/2*(a+b),b+1/2*(a-b)));


