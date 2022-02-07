import "../../inh" as inh;
import "../../geo" as geo;

size(4cm);

Tri t = mktri(7,8,9);

draw(t.A--t.B--t.C--t.A);

pair H = (t.C.x, 0);

mksq2(H,t.C);
draw(t.C--H, L="$h$");
draw(t.A--H, L="$x$",N);

dv(t.C,t.B,t.A,"$v$",0.5N+E);

label("$b$",t.C/2,NW);
label("$c$",t.B/2,S);
label("$a$",t.B+(t.C-t.B)/2,NE);



