import "../../inh" as inh;
import "../../geo" as geo;

unitsize(3cm);

pair A = (1,0);
pair B = f(pi/3);

filldraw(graph(f,0,pi/3)--O--cycle, arpeng);
draw(graph(f,0,pi/3)--O--cycle);
label("$r$", A/2, S);
label("$a$", f(pi/6), NE);
