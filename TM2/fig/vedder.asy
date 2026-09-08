import graph3;
import "../../inhopg" as inhopg;

unitsize(9.25cm);
triple proj = (-1.25,-0.25,-1);
currentprojection=orthographic(proj);

real a = 0.1;
real b = 0.3;

triple f(real t) {
	return (b*t, t^3-a*t, 0);
}

triple fd(real t) {
	return (b*1, 3t^2-a, 0);
}

triple fdd(real t) {
	return (0, 6t, 0);
}

real t =  0.3;
real a = -0.5;
real b = 0.8;

