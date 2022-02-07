import "../../inh" as inh;
import "../../geo" as geo;

size(3.5cm);

Tri t = mktri(3,5,4);

draw(t.A--t.B--t.C--t.A);


dv(t.B,t.C,t.A,"$v$",0.5N+E);

label("$c$",t.C/2,NW);
label("$b$",t.B/2,S);
label("$a$",t.B+(t.C-t.B)/2,E);
