import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1cm);

mkgrid((0,3),(0,4));
xaks(0,3,tck=true,bex=1.1,l="$x$");
yaks(0,4,tck=true, l="$y$");


pair u = (2,3);

draw(O--u,blue, Arrow,L=Label("$\vec{v}$",align=NW,position=MidPoint));


