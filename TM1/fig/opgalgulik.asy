import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(6cm,4cm,keepAspect=false);

real f(real x){
	return (x^2-9x+20);	
}

real g(real x){
	return (x-1);	
}


real a = 0;
real b = 7.2;

xaks(0,7.2,bex=1.1,l="$x$");
yaks(-0.4,f(7.3),bex=1.1, l="$y$");

mktc(3,"3");
mktc(7,"7");


draw(graph(f,2,b),blue,L=Label("$x^2-9x+20$",position=EndPoint));
draw(graph(g,2,b),red,L=Label("$x-1$",position=EndPoint));
draw((3,0)--(3,f(3))^^(7,0)--(7,f(7)),dotted);

