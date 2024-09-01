import inh;
import figs;
unitsize(1cm);

real v = 0;
real r = 2;
void s(real v, pair A = (0,0), real sc=1){ 
 	path p = (0,0)--r*(cos(v),sin(v));
	draw(shift(A)*scale(sc)*p);
	}

s(0);
s(0,(0,-0.5), sc=1.2);

s(30,(3,1));
s(30,(3.5,1),sc=1.4);
