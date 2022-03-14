import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1cm);

mkgrid((0,4),(-3,2));
xaks(0,4,tck=true,bex=1.1,l="$x$");
yaks(-3,2,tck=true, l="$y$");


pair u = (2,3);

pair A = (1,-2);

draw(A--A+u, blue,arrow=Arrow,L=Label("$\vec{v}$",align=SE,position=MidPoint));


