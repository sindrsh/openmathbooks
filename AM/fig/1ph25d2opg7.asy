import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(5cm);

pair f(real x) {
	return (cos(x), sin(x));
}

pair A = (0, 0);
pair B = (3, 0);
pair C = (3, 2);
pair D = (0, 2);

draw(B--A--D--C);


draw(shift(1/2*(B+C))*graph(f, -pi/2, pi/2));
filldraw(A--B--shift(1/2*(B+C))*graph(f, -pi/2, pi/2)--C--D--cycle, arpeng);
draw(B--C, dashed);

label("$y$", B/2, S);
label("$x$", D/2, W);


