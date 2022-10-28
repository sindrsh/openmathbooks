import inh;
unitsize(0.15cm);

pen arpenp = purple+opacity(0.3);
pen arpen = Cyan+opacity(0.4);
pen arpeno = orange+opacity(0.5);
pen arpenr = red+opacity(0.5);
pen arpenc = Cyan+opacity(0.2);
pen arpeng = cmyk(green)+opacity(0.2);


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


