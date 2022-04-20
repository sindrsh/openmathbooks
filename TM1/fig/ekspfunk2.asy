import "../../inh" as inh;
import "../../drwgrph" as inh;

unitsize(1.25cm);

real f(real x) { 
	return 1+1/x; 
}

real g(real x){
	return 2-(1/4)^(1/x);
}

real b = 5;
real a = 1;

mkgrid((0,b),(0,2));

yaks(0,2.25,bex=1.05,tck=true,l="$y$");
xaks(0,b,bex=1.1,tck=true,l="$z$");


draw(graph(f,a,b),blue);
draw(graph(g,a,b),red);

real x = b+0.2;
real dx = 0.25;
real y = 2;
real dy = 0.5;
draw((x,y)--(x+dx,y),blue,L="\color{black}$1+\frac{1}{z}$",align=3E);
draw((x,y-dy)--(x+dx,y-dy),red,L="\color{black}$2-\left(\frac{1}{4}\right)^\frac{1}{z}$",align=3E);



