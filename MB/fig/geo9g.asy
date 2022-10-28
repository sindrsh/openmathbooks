import inh;
unitsize(2cm);

draw(unitcircle);

pair p(real v, real r=1){
	return r*(cos(v), sin(v));
}

void poly(int n=3, real r=1){
	real v = 2*pi/n;
	pair[] L;
	int cnt = 0;
	for (int i=0; i<=n; ++i){
		pair p1 = r*(cos(v*i), sin(v*i));
		L.push(p1);
		if (i>=1){
			draw(L[i-1]--L[i], blue);
		}
		++cnt;
	}
}

poly(6);
poly(12);

real v = 2pi/12;
pair O = (0,0);
pair A = (0,1);
pair C = (sin(v),cos(v));
pair B = (0,C.y);

draw(A--O^^O--C,deepgreen);

