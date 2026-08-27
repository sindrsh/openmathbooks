import "../../inhopg" as inhopg;
import "../../geo" as geo;

unitsize(1cm);

pair f(real x) {
	return (cos(x), sin(x));
}

draw(unitcircle);
real v = pi/6;
pair A = f(v);
pair B = f(pi-v);
pair C = f(v-pi);
pair D = f(-v);

filldraw(A--B--C--D--cycle, arpen);





















