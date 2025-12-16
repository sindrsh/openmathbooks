import t1v25opg4;

real f(real x){
	return (x+7)*(x+1)*(x-2);
}	

real a = -8.5;
real b = 5;
xaks(a, b, l="$x$");
yaks(f(a), f(b), l="$y$");

draw(graph(f, a, b), blue);
