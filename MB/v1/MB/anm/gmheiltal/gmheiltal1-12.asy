import "../anm.asy" as figs;


label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

real dy = 0.5;
real x = 1;
real y = 0;
real dx = -0.15;

transform sh = shift(-1,0);
label(sh*(x-1.66,1),"${354}\cdot2=$",align=E);


label(sh*(x,y),"${300}\cdot2$",align=W);

label(sh*(x+dx,y),"$=\color{blue}\phantom{0}600$",align=E);

label(sh*(x,y-dy),"${\phantom{0}50}\cdot2$",align=W);

label(sh*(x+dx,y-dy),"$=\color{blue}\phantom{0}100$",align=E);

label(sh*(x,y-2dy),"${\phantom{0}4}\cdot2$",align=W);

label(sh*(x+dx,y-2dy),"$=\color{blue}\phantom{000}8$",align=E);

draw(sh*(x-4dx,y-2.5dy)--sh*(1.75+x+dx,y-2.5dy));
label(sh*(x+dx,y-3dy),"$\color{blue}\phantom{=0}708$",align=E);

