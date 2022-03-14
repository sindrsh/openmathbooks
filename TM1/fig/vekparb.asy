import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(4*1.3cm, 3*1.3cm, keepAspect=false);


real a = 5;
real b = 4;

xaks(0,a,l="$x$",bex=1.2);
yaks(0,b,l="$y$",bex=1.2);


pair A = (a,b);
mktc(A.x,"$x_2$");
mktcy(A.y,"$y_2$");

dv((A.x,0), A, O, "$\alpha$",0.5N+E, Cyan,sc=1);

draw((A.x,0)--A--(0,A.y),dotted);

draw(O--A,blue,arrow=Arrow(), L=Label("$\vec v$", align=NW,position=Relative(0.5)));
