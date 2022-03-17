import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(0.4cm);


real a = 5;
real b = 4;

xaks(-a,a,l="$x$",bex=1.2);
yaks(-b,b,l="$y$",bex=1.2);


pair A = (a,b);
mktc(A.x,"$x_2$");
mktcy(A.y,"$y_2$");
mktc(-A.x,"$x_2$",pos=BeginPoint);
mktcy(-A.y,"$y_2$",pos=BeginPoint);

dv((A.x,0), A, O, "$\alpha$",0.5N+E, Cyan,sc=1);
dv((-A.x,0), -A, O, "$\alpha$",0.5S+W, Cyan,sc=1, D=(-2pi,0));

draw((A.x,0)--A--(0,A.y),dotted);
draw((-A.x,0)-- -A--(0,-A.y),dotted);

draw(O--A,blue,arrow=Arrow(), L=Label("$\vec v$", align=NW,position=Relative(0.5)));
draw(O----A,red,arrow=Arrow(), L=Label("$-\vec v$", align=SE,position=Relative(0.5)));
