import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

pair f(real x){
	return (cos(x), sin(x));
}

pair A = (0, 0);

real v = pi/6;

for(int i=0; i<12; ++i){
	pair B = f(i*v);
	pair C = f((i+1)*v);
	filldraw(A--B--C--cycle, arpeng);
}

draw(unitcircle);
