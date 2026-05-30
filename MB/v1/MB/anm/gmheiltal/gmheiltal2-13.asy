import "../anm.asy" as figs;


label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));

real dy = 0.5;
real x = 1;
real y = 0;
real dx = -0.15;

transform sh = shift(-1,0);
label(sh*(x-1.66,1),"$12,8\cdot3=38,4$",align=E);


label(sh*(x,y),"${100}\cdot3$",align=W);

label(sh*(x+dx,y),"$=\color{blue}\phantom{0}300$",align=E);

label(sh*(x,y-dy),"${\phantom{0}20}\cdot3$",align=W);

label(sh*(x+dx,y-dy),"$=\color{blue}\phantom{00}60$",align=E);

label(sh*(x,y-2dy),"${\phantom{0}4}\cdot3$",align=W);

label(sh*(x+dx,y-2dy),"$=\color{blue}\phantom{00}24$",align=E);

draw(sh*(x-4dx,y-2.5dy)--sh*(1.75+x+dx,y-2.5dy));
label(sh*(x+dx,y-3dy),"$\color{blue}\phantom{=0}384$",align=E);

