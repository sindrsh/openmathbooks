import "../../inh" as inh;
import "../../geo" as geo;

size(3.5cm);

Tri t = mktri(7,8,9);

draw(t.A--t.B--t.C--t.A);

dv(t.C,t.B,t.A,"$v$",0.5N+E,sc=1.2);

label("$b$",t.C/2,NW);
label("$c$",t.B/2,S);
label("$a$",t.B+(t.C-t.B)/2,NE);
