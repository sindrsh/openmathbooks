import inh;
unitsize(1.3cm);
import graph;
import math;

pair f(real z){
    return (cos(z), sin(z));
}

int n = 10;
real v = pi/2;
pair O = (0,0);
real u = pi/n;
path s = graph(f, v+u, v-u, operator..);
path p = O--s--O--cycle;
pen pn = deepgreen+opacity(0.3);

for (int i=0; i <= n-1; ++i){
	if (i%2 == 0){ filldraw(shift((i*cos(v-u),0))*p, pn, black+0.2pt); }
	else{ filldraw(rotate(180)*shift((-i*cos(v-u),-sin(v-u)))*p, pn, black+0.2pt); }
	filldraw(shift(-2,0.5)*rotate((i+1)*180/pi*2*u)*p, pn, black+0.2pt);
	}
	


