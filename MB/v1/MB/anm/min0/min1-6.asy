import "../anm.asy" as figs;
import minus;

label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));
sh = shift((1,1));
a = 2;
b = 3;
c = 3;

label((-3,1),"${\color{orange}132}-53=$",align=E);

pen g = deepgreen;
pen bl = blue;

draw(sh*(0,-1/2*dy)--(sh*((a+b+2)*x,-1/2*dy)));
n2(3,0);
n2(5,1);


ny();
n1(7,0);
n2(0,0);
n2(6,1);

ny();
n1(0,0);
n1(4,1);
n2(0,0);
n2(0,1);
n2(1,2);

ny();
n1(2,0);
n1(3,1);
n2(2,0,orange);
n2(3,1,orange);
n2(1,2,orange);




