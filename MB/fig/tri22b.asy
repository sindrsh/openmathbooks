import inh;
import figs;
import graph;
import math;

unitsize(1.75cm);
pair f(real z){
    return (cos(z), sin(z));
}

path s = graph(f, 0, 2*pi, operator..);
draw(shift((pi),0)*s,red);
draw(shift((pi),0)*((0,0)--(1,0)), L="$3$");
//draw((0,-1.5)--(2*pi,-1.5), deepgreen, L=Label("$O$", align=S,black));

	


