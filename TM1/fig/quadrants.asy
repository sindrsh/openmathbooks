import "../../inhopg" as inhopg;
import "../../geo" as geo;
import "../../drwgrph" as drwgrph;

size(6cm);

pair f(real x){
	return (cos(x), sin(x));
}

pair A = f(pi/6);
pair B = f(pi-pi/6);
pair C = (-1, 0);
pair D = (1, 0);

pair Ax = (A.x, 0);
pair Bx = (B.x, 0);

draw(C--D);

draw(Bx--B--O);
draw(B--D);

dv(Ax, B, O, sc=0.1, "$u$", NE);
dv(C, B, O, sc=0.2, "$v$", 0.5W, p=green);

draw(graph(f, 0, pi));
dott(O, "$O$", S);
dott(B, "$C$", NW);
dott(Bx, "$A$", S);
dott(D, "$B$", S);
