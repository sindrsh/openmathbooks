import "../../inh" as inh;
import "../../geo" as geo;

size(6cm);

Tri t = mktri(9,5.5,4);

draw(t.A--t.B--t.C--t.A);

pair H = (t.C.x, 0);

mksq2(H,t.C);
draw(t.C--H, L="$h$");
draw(t.A--H, L="$x$");

dv(t.C,t.B,t.A,"$v$",NE);

label("$b$",t.C/2,SW);
label("$c$",t.B/2,N);
label("$a$",t.B+(t.C-t.B)/2,NE);
