import "../../inhopg" as inh;
import drwgrph;
size(4cm, 3cm, keepAspect=false);

real f(real x){
	return 2x;
}

real g(real x){
	return 3x+10;
}

real h(real x){
	return 31/x;
}

int a = 0;
int b = 10;


draw(graph(f,0,b), blue, L=Label("$f(x)$", position=Relative(1)));
draw(graph(g,0,b), green, L=Label("$g(x)$", position=Relative(1)));
draw(graph(h,1,b), red, L=Label("$h(x)$", position=Relative(1), NE));
xaks(a,b, aex=1.075,l="$x$");
yaks(0, g(b), l="$y$", bex=1.075);
