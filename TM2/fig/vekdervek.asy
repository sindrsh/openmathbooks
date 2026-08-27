import graph3;
import "../../inh" as inh;

size(6cm,5cm);


triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

draw(-X -- 2X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(-Y -- 2Y, L=Label("$y$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(-0.5Z -- Z, L=Label("$z$",
position=EndPoint), arrow=Arrow3(HookHead2));

triple f(real t) {
	return (t^2, sin(t), cos(t)) + (-1, 0,-0.5);
}

triple fd(real t) {
	return (2t, cos(t), -sin(t));
}

triple A = f(0);
triple B = f(0)+fd(0);
triple C = f(0)-fd(0);

draw(graph(f, -1.5, 1.5), green);
draw(A--B, blue, arrow=Arrow3(DefaultHead2));

int a = 2;
int b = 3;
int c = 3;

triple A = (a,b,c);

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

