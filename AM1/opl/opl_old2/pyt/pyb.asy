settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(0.15cm);


real a = 13;
real b = 10;
pair o = (0,0);
pair M = (a,a);

real L = 1.5;
draw(box((0,0), (L,L)));
transform sh = shift(0,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), dotted);
filldraw(sh*B, blue+opacity(0.4));
filldraw(shift((0,-a))*sh*(box((0,0), (a,a))), red+opacity(0.7));
filldraw(shift((-b,0))*sh*(box((0,0), (b,b))), Magenta+opacity(0.7));
label("$a^2$", sh*(1/2*a,-1/2*a));
label("$b^2$", sh*(-1/2*b,1/2*b));
label("$c^2$", sh*(1/2*(a+b),b+1/2*(a-b)));
draw(sh*box((0,0), (L,L)));



