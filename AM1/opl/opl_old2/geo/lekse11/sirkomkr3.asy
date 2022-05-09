import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import graph;
import math;

unitsize(1.5cm);
pair f(real z){
    return (cos(z), sin(z));
}

path s = graph(f, 0, 2*pi, operator..);
draw(shift((pi),0)*s,blue);
draw(shift((pi),0)*((-1,0)--(1,0)),N);
//draw((0,-1.5)--(2*pi,-1.5), deepgreen, L=Label("$O$", align=S,black));

	


