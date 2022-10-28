settings.outformat="pdf";
size(6 cm, 5 cm, keepAspect=false);
import mods2;
real f(real x){
    return 1.5*x**2-2*x;
}
real g(real x){
    return 0.5*x**3-x^2;
}
real xmin = 0;
real xmax = 2.1;
real a = 0;
real b = 2;
real c = 4/3;
int n = 2;
real dx = (b-a)/n;
path s = graph(f, xmin, xmax, operator..);
path s1 = graph(g, xmin, xmax, operator..);

real y1 = -1.5;
real y2 = f(xmax)+0.2;
xaks(xmin, xmax,l="$x$");
yaks(y1, y2, l="");


for (int i = 1; i <= n; ++i){
	string k1 = format("$%d$", i, " ");
	mktc(i, k1);
}
for (int i = -1; i <= (int) y2; ++i){
	if (i!=0){
	string k1 = format("$%d$", i, " ");
	mktcy(i, k1);
	}
	
}
path s2 = (0,0)--graph(f,a,c)--(c,0) --cycle;
path s3 = (c,0)--graph(f,c,b)--(b,0) --cycle;
fill(s2, palegreen+opacity(0.5));
fill(s3, orange+opacity(0.4));

draw(s,deepgreen,L=Label("$f$", position=EndPoint));
draw(s1,blue,L=Label("$F$", position=EndPoint));

void grid(){
	int xmin = (int) xmin;
	int xmax = (int) xmax;
	int y1 = (int) y1;
	int y2 = (int) y2;
	for (int i = y1; i <= y2; ++i){
		if (i!=0){
		draw((xmin,i)--(xmax,i), black+opacity(0.1));
		}
	}
	for (int i = xmin; i <= xmax; ++i){
		if (i!=0){
		draw((i,y1)--(i,y2), black+opacity(0.1));
		}
	}	
}
grid();
