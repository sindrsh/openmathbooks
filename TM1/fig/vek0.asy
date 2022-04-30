import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(7cm,5cm,keepAspect=false);

pair f(real t){
	return (t^2-t-2,t*sin(t)-1);	
}

real a = 2;
xaks(-3,5,bex=1.1,l="$x=f(t)$");
yaks(-1.1,1,bex=1.1, l="$y=g(t)$");


draw(graph(f,a,-a),blue,L=Label("$\vec v(t)$",position=EndPoint));

