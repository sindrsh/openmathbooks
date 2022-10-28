import "../../inh" as inh;
import "../../drwgrph" as grph;
import "../../geo" as geo;

size(8cm,4cm,keepAspect=false);
real d = 0.3;
real f(real x){
    return cos(2pi*x-pi/3)+d;
}

real a = pi/6-1.7;
real b = pi/6+0.98;

xaks(a,b,l="$x$");
yaks(-1+d,1+d,l="$f$");

draw(graph(f,a,b),blue);
pair A = (1/6, f(1/6));
pair B = A+(1,0);
pair C = A-(1,0);
pair Cm = C-(0,1);

draw((a,d)--(b,d),L=Label("$y=d$",align=E,position=EndPoint),dotted);

draw(Cm--C,L="$a$");
draw(A--B,L="$P$");
mktc(A.x,"$x_1$");
mktc(A.x+1,"$x_2$");
draw((A.x,0)--A,dotted);
draw((A.x+1,0)--(A.x+1,A.y),dotted);

