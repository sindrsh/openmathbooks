import inh;
import math;
unitsize(2cm);

real a=1;

pair f(real v){
	return a*(cos(v),sin(v));
}

real v = pi/3.5;
pair O = (0,0);
pair A = f(v);
pair B = f(pi-v);
pair P = (0,A.y);

real k = P.y;
real s = sqrt(a^2-k^2);
