import r1h25d2opg6;

real f(real x){
	return 2^x;
}

real x1 = -5;
real x2 = 3;
real y1 = -1;
real y2 = 6;

mkgrid((x1, x2), (y1, y2));
xaks(x1, x2, l="$x$");
yaks(y1, y2, l="$y$");

for(int i=0; i<4; ++i){
	real p = -4+2*i;
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


draw(graph(f, x1, log(6)/log(2)), blue);
label("G", (x1, y2));
