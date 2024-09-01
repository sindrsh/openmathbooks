import inh;
import drwgrph;
size(11cm, 7cm, keepAspect=false);

real f(real x){
	return 10*x;
	}

int a = -5;
int b = 5;
mkgrid((-5,5),(-50,50), dy=10);
xaks(a, b,l="$x$",bex=1.1,tck=true, tc=1);
yaks(-50, 50, l="$y$", bex=1.1, tck=true, tc=10);

draw((a,f(a))--(b,f(b)),blue);
label("$f(x)=10x$",(b,f(b)),NW,blue);

