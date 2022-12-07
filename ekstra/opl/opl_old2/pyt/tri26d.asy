settings.outformat="pdf";
defaultpen(fontsize(16pt));
unitsize(0.35cm);


int a = 6;
int b = 8;
string as = (string) a;
string bs = (string) b;
pair o = (0,0);
pair M = (a,a);

int ys = -20;
int xs = 20;

filldraw(o--(a,0)--M--(0,a)--cycle, red+opacity(0.7));
filldraw(M--(a+b,a)--(a+b,a+b)--(a,a+b)--cycle, Magenta+opacity(0.7));
filldraw(M--(a,0)--(a+b,0)--(a+b,a)--cycle, orange+opacity(0.7));
filldraw(M--(0,a)--(0,a+b)--(a,a+b)--cycle, orange+opacity(0.7));
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
draw(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle);
label("$a$", (1/2*a,0), align=S);
label("$b$", (a+1/2*b,0), align=S);
label("$a$", (0,1/2*a), align=W);
label("$b$", (0,a+1/2*b), align=W);

transform sh = shift(xs,0);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
filldraw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), green+opacity(0.3));
filldraw(sh*B, blue+opacity(0.4));
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

sh = shift(0,ys);
filldraw(sh*(o--(a,0)--M--(0,a)--cycle), red+opacity(0.7));
filldraw(sh*(M--(a+b,a)--(a+b,a+b)--(a,a+b)--cycle), Magenta+opacity(0.7));
filldraw(sh*(M--(a,0)--(a+b,0)--(a+b,a)--cycle), orange+opacity(0.7));
filldraw(sh*(M--(0,a)--(0,a+b)--(a,a+b)--cycle), orange+opacity(0.7));
path B = sh*((a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle);
draw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle));
label(as, sh*(1/2*a,0), align=S);
label(bs, sh*(a+1/2*b,0), align=S);
label(as, sh*(0,1/2*a), align=W);
label(bs, sh*(0,a+1/2*b), align=W);

transform sh = shift(xs,ys);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
filldraw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), green+opacity(0.3));
filldraw(sh*B, blue+opacity(0.4));
label(as, sh*(1/2*a,0), align=S);
label(bs, sh*(a+1/2*b,0), align=S);
label(bs, sh*(0,1/2*b), align=W);
label(as, sh*(0,b+1/2*a), align=W);
label("$c$", sh*(a+1/2*b,1/2*a), align=SE);
label("$c$", sh*(a-1/2*a,1/2*b), align=SW);
label(as, sh*(a+b,1/2*a), align=E);
label(bs, sh*(a+b,a+1/2*b), align=E);
label(bs, sh*(1/2*b,a+b), align=N);
label(as, sh*(b+1/2*a,a+b), align=N);

sh = shift(0,2*ys);
filldraw(sh*(o--(a,0)--M--(0,a)--cycle), red+opacity(0.7));
filldraw(sh*(M--(a+b,a)--(a+b,a+b)--(a,a+b)--cycle), Magenta+opacity(0.7));
filldraw(sh*(M--(a,0)--(a+b,0)--(a+b,a)--cycle), orange+opacity(0.7));
filldraw(sh*(M--(0,a)--(0,a+b)--(a,a+b)--cycle), orange+opacity(0.7));
path B = sh*((a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle);
draw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle));

transform sh = shift(xs,2*ys);
path B = (a,0)--(a+b,a)--(b,a+b)-- (0,b)--cycle;
filldraw(sh*(o--(a+b,0)--(a+b, a+b)--(0,a+b)--cycle), green+opacity(0.3));
filldraw(sh*B, blue+opacity(0.4));

