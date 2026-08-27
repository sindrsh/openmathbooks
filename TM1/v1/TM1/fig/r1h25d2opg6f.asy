import r1h25d2opg6;

real f(real x){
	return x^4-1;
}

real x1 = -4;
real x2 = 5;
real y1 = -2;
real y2 = 5;

mkgrid((x1, x2), (y1, y2));
xaks(x1, x2, l="$x$");
yaks(y1, y2, l="$y$");

for(int i=0; i<4; ++i){
	real p = -2+2*i;
	if(p!=0){
		mktc(p, format(p));
	}
	
}

for(int i=0; i<2; ++i){
	real p = 2+2*i;
	if(p!=0){
		mktcy(p, format(p));
	}
}


draw(graph(f, -1.57, 1.57), blue);
label("F", (x1, y2));

