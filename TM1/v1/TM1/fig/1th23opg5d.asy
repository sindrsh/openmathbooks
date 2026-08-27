import t1h23opg5;

real f(real x){
	return (x^2-4)/((x-3)*(x+3))-1;
}

real a = 14;
real h = 0;
real v1 = -3;
real v2 = 3;
real x1 = v1-0.1;
real x2 = v1+0.1;
real x3 = v2-0.1;
real x4 = v2+0.1;
real y1 = f(x1);
real y2 = f(x2);

xaks(-a, a, l="$x$");
yaks(y2, y1, l="$y$");


pair A = (-a, h);
pair B = (a, h);
pair C = (v1, y1);
pair D = (v1, y2);
pair Ep = (v2, y2);
pair F = (v2, y1);


draw(graph(f, -a, x1), blue);
draw(graph(f, x2, 0), blue);
draw(graph(f, 0, x3), blue);
draw(graph(f, x4, a), blue);
draw(A--B, dotted+red);
draw(C--D, dotted);
draw(Ep--F, dotted);

