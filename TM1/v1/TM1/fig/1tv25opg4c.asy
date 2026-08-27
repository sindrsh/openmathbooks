import t1v25opg4;

real f(real x){
	return (x+2)*(x-8)*(x-1);
}	

real a = -4;
real b = 8.5;
xaks(a, b, l="$x$");
yaks(f(a), f(b), l="$y$");

draw(graph(f, a, b), blue);
