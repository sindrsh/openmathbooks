import t1v25opg4;

real f(real x){
	return -(x+3)*(x-1)*(x-7);
}	

real a = -7;
real b = 11;
xaks(a, b, l="$x$");
yaks(f(b), f(a), l="$y$");

draw(graph(f, a, b), blue);
