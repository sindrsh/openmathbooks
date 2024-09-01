import inh;
unitsize(1cm);
import geo0;


draw(unitcircle);
real s = 1.75;
draw(scale(s)*unitcircle);

pair p(real v, real r=1){
	return r*(cos(v), sin(v));
}

real v = pi/2;

poly(4);
poly(4, r=s);
//draw((0,0)--(1,0)--p(v)--cycle, blue);
//draw((0,0)--(1.s,0)--p(v, 1.s)--cycle, blue);


