import "../anm.asy" as figs;

pen g = deepgreen;
import pluss;
sh = shift((1,1));
a = 2;
b = 3;
c = 3;

label((-3,1),"$158+6{\color{blue}7}=$",align=E);

n2(8,0);
n2(5,1);
n2(1,2);
draw(sh*(0,-1/2*dy)--(sh*((a+b+2)*x,-1/2*dy)));

ny();
n1(2,0);
n2(0,0,g);
n2(6,1,g);
n2(1,2,g);

ny();
n1(5,0,g);
n2(5,0);
n2(6,1);
n2(1,2);

