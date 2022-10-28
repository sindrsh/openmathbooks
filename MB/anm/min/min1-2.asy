import "../anm.asy" as figs;
import minus;

label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));
sh = shift((1,1));
a = 2;
b = 3;
c = 3;

label((-3,1),"$134-87=$",align=E);
draw(sh*(0,-1/2*dy)--(sh*((a+b+2)*x,-1/2*dy)));

n2(7,0);
n2(8,1);





