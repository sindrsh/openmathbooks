import "../../inhopg" as inh;
import drwgrph;
size(4cm, 3cm, keepAspect=false);

real f(real x){
	return 2x;
}

real f(real x){
	return 3x+10;
}

real h(real x){
	return 31/x;
}

int a = 0;
int b = 10;


draw(graph(f,0,b), blue);
xaks(a,b, aex=1.075,l="$x$");
yaks(0, f(b), l="$f$", bex=1.075);
