import r1h25d2opg6;

real f(real x){
	return 6x/4;
}

real x1 = -4;
real x2 = 5;
real y1 = -2;
real y2 = 5;

mkgrid((x1, x2), (y1, y2));
xaks(x1, x2, l="$x$");
yaks(y1, y2, l="$y$");

mktc(4, "1");

for(int i=0; i<2; ++i){
	real p = 2+2*i;
	if(p!=0){
		mktcy(p, format(p));
	}
}


draw(graph(f, -1.33, 3.33), blue);
label("C", (x1, y2));

