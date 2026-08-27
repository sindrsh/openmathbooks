import graph3;
import "../../inh" as inh;

size(4.6cm);


triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

draw(-X -- 2X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(-Y -- 2Y, L=Label("$y$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(-0.5Z -- 2Z, L=Label("$z$",
position=EndPoint), arrow=Arrow3(HookHead2));

triple f(real t) {
	return (t^2, sin(t), cos(t)) + (-1.5, 0,-0.25);
}

triple fd(real t) {
	return (2t, cos(t), -sin(t));
}

real t = -0.3;
triple O = (0, 0, 0);
triple A = f(t);
triple B = f(t)+fd(t);
triple C = f(t)-fd(t);

draw(B+0.5*(B-A)--C, blue);


draw(graph(f, -1.5, 1.5), green);
draw(A--B, arrow=Arrow3(DefaultHead2), L=Label("$\vec{r}\,'(a)$", align=W));
draw(O--A, arrow=Arrow3(DefaultHead2), L=Label("$\vec{r}(a)$", align=0.5N+0.7E));
int a = 2;
int b = 3;
int c = 3;

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);
dot(A);

