import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(8cm,5cm,keepAspect=false);

pair f(real t){
	return (t^2-t-2,t*sin(t)-1);
}

pair fd(real t){
	return (2t-1,sin(t)+t*cos(t));
}

real a = 2;
xaks(-3,2,bex=1.1,l="$x=f(t)$");
yaks(-1.1,1,bex=1.1, l="$y=g(t)$");


draw(graph(f,a,-1.5),blue,L=Label("$\vec r(t)$",position=EndPoint));
real t1 = 0.2;
real t2 = t1+0.5;

pair A = f(t1);
pair B = A + fd(t1);
draw(A--B, arrow=Arrow, L="$\vec{r}\,'(a)$", SW);
draw(O--A, arrow=Arrow, L="$\vec{r}(a)$");

dott(A);
