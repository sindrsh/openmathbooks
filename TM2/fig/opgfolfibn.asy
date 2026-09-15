import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(6cm);

pair f(real x) {
	return (cos(x), sin(x));
}

void drwq(real r, real x1, real x2, pair A = (0, 0)) {
	draw(shift(A)*scale(r)*graph(f, x1, x2));
}

filldraw(shift(-1, 0)*unitsquare, arpeno);
filldraw(shift(-1, 1)*unitsquare, arpeno);
drwq(1, 3pi/2, 2pi, (-1, 1));
drwq(1, 0, pi/2, (-1, 1));

filldraw(shift(-3, 0)*scale(2)*unitsquare, arpen);
drwq(2, pi/2, pi, (-1, 0));

filldraw(shift(-3, -3)*scale(3)*unitsquare, arpeng);
drwq(3, pi, 3pi/2, (0, 0));

filldraw(shift(0, -3)*scale(5)*unitsquare, arpenr);
drwq(5, 3pi/2, 2pi, (0, 2));
