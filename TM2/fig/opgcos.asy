import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(8cm, 6cm, keepAspect=false);

real f(real x) {
	return 2*cos(1/2*(x-pi))+3;
}

mkgrid((-5pi, 5pi), (0, 5), dx=pi);

xaks(-5.5*pi, 5.5*pi, l="$x$", bex=1.05);
yaks(0, 5, tck=true, l="$f$", bex=1.1);

for(int i = -5; i<-1; ++i) {
	mktc(i*pi, "$" + string(i) + "\pi$");
}

mktc(-pi, "$-\pi$");
mktc(0, "0");
mktc(pi, "$\phantom{1}\pi\phantom{1}$");

for(int i = 2; i<6; ++i) {
	mktc(i*pi, "$" + string(i) + "\pi$");
}

draw(graph(f, -5pi, 5pi), blue);
