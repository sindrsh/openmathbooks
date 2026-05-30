import "../anm.asy" as figs;


label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));

real dy = 0.5;
real x = 1;
real y = 0;
real dx = -0.15;

transform sh = shift(-1,0);
label(sh*(x-1.66,1),"${\color{blue}1}28\cdot3=$",align=E);


label(sh*(x,y),"${\color{blue}100}\cdot3$",align=W);

label(sh*(x+dx,y),"$=\phantom{0}300$",align=E);
/*
label(sh*(x,y-dy),"$\phantom{0}50\cdot2$",align=W);
label(sh*(x+dx,y-dy),"$=\phantom{0}100$",align=E);

label(sh*(x,y-2dy),"$\phantom{0}4\cdot2$",align=W);
label(sh*(x+dx,y-2dy),"$=\phantom{000}8$",align=E);
*/
