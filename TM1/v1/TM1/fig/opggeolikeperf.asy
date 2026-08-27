import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(1.5cm);

pair A = f(pi/7);
pair B = f(pi/3);
pair C = f(5pi/6);
pair D = f(9pi/8);

draw(C--A--B--C);
draw(D--A--B--D);

dv(A,B,C, "$u$", E);
dv(A,B,D, "$u$", 0.8N+E);

draw(graph(f,0,2pi));
