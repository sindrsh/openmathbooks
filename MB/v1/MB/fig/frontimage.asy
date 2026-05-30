import "../../inh" as inh;
unitsize(1.8cm);
import geo0;
defaultpen(1bp);

void polyper(int n=3, int t=0, real r=1){
	real v = 2*pi/n;
	pair[] L;
	for (int i=0; i<=n; ++i){
		pair p1 = (r*cos(v*i), r*sin(v*i));
		L.push(p1);
		if (i>=1){
			path p = L[i-1]--L[i];
			draw(p, green);
		}
	}
}

draw(unitcircle);


