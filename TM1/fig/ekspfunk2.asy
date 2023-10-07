import "../../inh" as inh;
import "../../drwgrph" as inh;

size(8cm, 5cm, keepAspect=false);

real f(real x) {
	return 1+x;
}

real g(real x){
	return 2-(1/4)^(x);
}

real b = 1/2;
real a = 0;

mktc(0.5, "$\frac{1}{2}$");
draw(graph(f,a,b),blue);
draw(graph(g,a,b),red);
yaks(0,1.5,bex=1.05,tck=true,l="$y$");
xaks(0,b,bex=1.1,tck=true,l="$h$");

real x = b+0.1;
real dx = 0.05;
real y = 1.5;
real dy = 0.5;
draw((x,y)--(x+dx,y),blue,L="$\color{black}1+h$",align=3E);
draw((x,y-dy)--(x+dx,y-dy),red,L="\color{black}$2-\left(\frac{1}{4}\right)^h$",align=3E);
