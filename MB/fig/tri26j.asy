import "../../inh" as inh;
unitsize(0.15cm);


real a = 13;
real b = 10;
pair o = (0,0);
pair M = (a,a);


transform sh = shift(40,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
filldraw(sh*B, arpen);
filldraw(shift((0,-a))*sh*(box((0,0), (a,a))),arpenp);
filldraw(shift((-b,0))*sh*(box((0,0), (b,b))), arpenr);
label("$a^2$", sh*(1/2*a,-1/2*a));
label("$b^2$", sh*(-1/2*b,1/2*b));
label("$c^2$", sh*(1/2*(a+b),b+1/2*(a-b)));



