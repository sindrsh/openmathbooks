import t1v25opg4;

real f(real x){
	return -(x+9)*(x+1)*(x-3);
}	

real a = -10;
real b = 5;
xaks(a, b, l="$x$");
yaks(f(b), f(a), l="$y$");

draw(graph(f, a, b), blue);
