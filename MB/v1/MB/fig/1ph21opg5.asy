import "../../inhopg" as inhopg;
import "../../drwgrph" as drwpgrh;
import "../../geo" as geo;

size(6cm);

real f(real x){
	return -2x+3;
}

real g(real x) {
	return 1/2*x-2;
}

pair A = (3/2, 0);
pair B = (4, 0);
pair C = (2, -1);

filldraw(A--B--C--cycle, arpeng);

draw(graph(f, -0.5, 3), L=Label("$f$", position=EndPoint));
draw(graph(g, -0.5, 5), L=Label("$g$", position=EndPoint));
xaks(-0.5, 5, l="$x$");
yaks(-3, 3.5, l="$y$");

dott(C, "$(2, -1)$",0.5S+E);
dott((0, 3), "$(0, 3)$", E);
dott((0, -2), "$(0, -2)$", SE);

Tri t = mktri(abs(A-B), abs(B-C), abs(A-C));
write(t.Ar);
