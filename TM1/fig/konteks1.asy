import "../../inh" as inh;
import "../../drwgrph" as inh;

size(6cm);

real f(real x) { 
	if (x<2) { return x+4; }
	return -3*x+12; 
}

real g(real x) { 
	return -x+6;
}
real h(real x) { 
	return x+1;
}

real a = 0;
real b = 4;

yaks(0,6,tck=true,l="$y$");
xaks(a,b,tck=true,l="$x$");

draw(graph(f,a,b),blue);
draw(graph(g,2,b),red);
draw(graph(h,0,2),red);

draw((5,6)--(5.5,6),blue,L="$f$",align=3E);
draw((5,5)--(5.5,5),red,L="$g$",align=3E);

write(f(1.999999),f(2));
