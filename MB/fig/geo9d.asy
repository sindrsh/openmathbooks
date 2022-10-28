import inh;
unitsize(2cm);
import geo0;


draw(unitcircle);

pair p(real v, real r=1){
	return r*(cos(v), sin(v));
}

real v = pi/3;
draw((0,0)--(1,0)--p(v)--cycle, blue);


