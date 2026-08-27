import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(7cm, 5cm, keepAspect=false);

real f(real x){
	return log(x)/log(5);
}

mkgrid((0, 30), (-2, 3), dx=5, dy=1);
xaks(0, 30, "$x$");
yaks(-2, 3, "$y$");

for(int i=0; i<7; ++i) {
	real p = 5*i;
	if(p != 0){
		mktc(p, format(p));
	}
}

for(int i=0; i<5; ++i) {
	real p = -1+i;
	if(p != 0){
		mktcy(p, format(p));
	}
}

draw(graph(f, 0.1, 30), red);

