import t1h23opg5;

real f(real x){
	return -2/(x-4)+2;
}

real a = 14;
real h = 2;
real v = 4;
real x1 = v-0.1;
real x2 = v+0.1;
real y1 = f(x1);
real y2 = f(x2);

xaks(-a, a, l="$x$");
yaks(y2, y1, l="$y$");


pair A = (-a, h);
pair B = (a, h);
pair C = (v, y1);
pair D = (v, y2);


draw(graph(f, -a, x1), blue);
draw(graph(f, x2, a), blue);
draw(A--B, dotted);
draw(C--D, dotted);

