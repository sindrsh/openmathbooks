import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm);


real a = 1/2;
real b = 1;
real x = 5;

real f(real x) {
	return a*x+b;
}

xaks(-3,x,l="$x$",bex=1.2);
yaks(f(-3),f(x),l="$y$",bex=1.2);

pair A = (-3, f(-3));
pair B = (x, f(x));

pair C = (1,f(1));
pair D = (3.5,f(3.5));



draw(A--B,blue, L=Label("$l$", align=NW,position=Relative(1)));
draw(C--D,arrow=Arrow(), L=Label("$\vec r$", align=NW,position=Relative(0.5)));
dott(D,"$B$",SE);
dott(C,"$A$",SE);



