settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(0.15cm);


real a = 13;
real b = 10;
pair o = (0,0);
pair M = (a,a);

transform sh = shift(0,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), dotted);
draw(sh*(o--(a,0)--(0,b)--cycle));
draw(sh*B,dotted);
real L = 1.5;
draw(box((0,0), (L,L)));

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







