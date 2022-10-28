import inh;
unitsize(1.5cm);
import graph;
import math;

pair f(real z){
    return (cos(z), sin(z));
}

path s = graph(f, 0, 2*pi, operator..)--cycle;
filldraw(shift((pi),0)*s,arpen, black);
draw(shift((pi),0)*((0,0)--(1,0)), L="$r$");

	


