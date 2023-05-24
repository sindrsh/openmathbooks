import "../../inhopg" as inh;
import "../../geo" as geo;

size(5cm);

pair A = (-1,0);
pair B = (1,0);
pair C = f(pi/3);

draw(graph(f,0,pi)--cycle);
filldraw(graph(f,0,pi/3)--A--cycle, arpen);

dv(B, C, A, "$v$", sc=0.4);
