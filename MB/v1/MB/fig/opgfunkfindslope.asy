import "../../inhopg" as inhopg;
import drwgrph;

size(6cm);

real f(real x){
	return 5*x/4+3;
}

real g(real x) {
	return 2x;
}

pair O = (0, 0);
pair B = (4, 8);
pair C = (0, 3);
real a = 0;
real b = 5;

filldraw(O--B--C--cycle, arpenr);
draw((0,f(a))--(b, f(b)), L=Label("$f$", position=Relative(1), E));
draw((0,0)--(b, g(b)),L=Label("$g$", position=Relative(1)));

xaks(0, b, "$x$");
yaks(0, g(b), "$y$");
dott(O, "$O$", SW);
dott(B, "$B$", NW);
dott(C, "$C$", W);

