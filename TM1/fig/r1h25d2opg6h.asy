import r1h25d2opg6;

real x1 = -4;
real x2 = 5;
real y1 = -3;
real y2 = 4;

mkgrid((x1, x2), (y1, y2));
xaks(x1, x2, l="$x$");
yaks(y1, y2, l="$y$");

for(int i=0; i<4; ++i){
	real p = -2+2*i;
	if(p!=0){
		mktc(p, format(p));
	}
	
}

for(int i=0; i<3; ++i){
	real p = -2+2*i;
	if(p!=0){
		mktcy(p, format(p));
	}
}

draw((-4,2)--(5,2), blue);
label("H", (x1, y2));

