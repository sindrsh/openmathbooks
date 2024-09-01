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
filldraw(M--(a,0)--(a+b,0)--(a+b,a)--cycle, arpeno);
filldraw(M--(0,a)--(0,a+b)--(a,a+b)--cycle, arpeno);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle);
label("$a$", (1/2*a,0), align=S);
label("$b$", (a+1/2*b,0), align=S);
label("$a$", (0,1/2*a), align=W);
label("$b$", (0,a+1/2*b), align=W);

transform sh = shift(31,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
filldraw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), arpeng);

filldraw(sh*B, white);
filldraw(sh*B, arpen);
label("$a$", sh*(1/2*a,0), align=S);
label("$b$", sh*(a+1/2*b,0), align=S);
label("$b$", sh*(0,1/2*b), align=W);
label("$a$", sh*(0,b+1/2*a), align=W);
label("$c$", sh*(a+1/2*b,1/2*a), align=SE);
label("$c$", sh*(a-1/2*a,1/2*b), align=SW);
label("$a$", sh*(a+b,1/2*a), align=E);
label("$b$", sh*(a+b,a+1/2*b), align=E);
label("$b$", sh*(1/2*b,a+b), align=N);
label("$a$", sh*(b+1/2*a,a+b), align=N);

