import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
real s = 0.8;
size(s*6 cm, s*5 cm, keepAspect=false);
settings.outformat="pdf";
settings.render = 5;

real f(real x){
    return 1+0.5*x^2+sin(pi*x);
}

real xa = 0;
real xb = 1.9;
real a = 0.3;
real b = 1.8;
int n = 3;
real dx = (b-a)/n;

path s = graph(f, xa, xb, operator..);
draw(s,L=Label("$$", position=EndPoint));
xaks(xa, xb,l="$x$");
yaks(0, max(s).y,l="$f$");

mktc(a,"$a$");
mktc(b,"$b$");	

for(int i; i<n; ++i){
	real x0 = a+i*dx;
	real x1 = a+(i+1)*dx;
	pair A = (x0, f(x0));
	pair B = (x1, f(x1));
	filldraw((x0,0)--A--B--(x1,0)--cycle,arpeng,grey);
	if (i+1<n){ 
		mktc(x1,"$x_"+(string) (i+1) +"$");
	}	
}
real x1 = a+dx;

dott((a,0));
dott((x1,0));
dott((a, f(a)));
dott((x1, f(x1)));


