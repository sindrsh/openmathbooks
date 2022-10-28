import "../anm.asy" as figs;
defaultpen(fontsize(8 pt));

usepackage("asycolors");
import x11colors;
usepackage("xcolor");

label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

real dy = 0.4;
real x = 1;
real y = 0;
real dx = -0.15;

transform sh = shift(-1,0);
label(sh*(x-1.2,1),"${\color{cyan}2}{\color{heavygreen}7}{\color{orange}9}\cdot {\color{blue}3}4=$",align=E);


transform sh = shift(-3,0);
label(sh*(x,y),"${\color{cyan}200}\cdot \color{blue}30$",align=W);

label(sh*(x+dx,y),"$=\color{purple}6000$",align=E);

label(sh*(x,y-dy),"${\color{heavygreen}\phantom{0}70}\cdot \color{blue}30$",align=W);

label(sh*(x+dx,y-dy),"$=\color{purple}2100$",align=E);

label(sh*(x,y-2dy),"${\color{orange}\phantom{0}9}\cdot \color{blue}30$",align=W);

label(sh*(x+dx,y-2dy),"$=\color{purple}\phantom{0}270$",align=E);

draw(sh*(x-1.5dx,y-2.5dy)--sh*(0.9+x,y-2.5dy));
label(sh*(x+dx,y-3dy),"$\color{purple}\phantom{=}\;8370$",align=E);
/*

transform sh = shift(-0.5,0);
label(sh*(x,y),"${200}\cdot4$",align=W);

label(sh*(x+dx,y),"$=\color{blue}\phantom{0}800$",align=E);

label(sh*(x,y-dy),"${\phantom{0}70}\cdot4$",align=W);

label(sh*(x+dx,y-dy),"$=\color{blue}\phantom{0}280$",align=E);

label(sh*(x,y-2dy),"${\phantom{0}9}\cdot4$",align=W);

label(sh*(x+dx,y-2dy),"$=\color{blue}\phantom{00}36$",align=E);

draw(sh*(x-1.5dx,y-2.5dy)--sh*(0.9+x,y-2.5dy));
label(sh*(x+dx,y-3dy),"$\color{blue}\phantom{=}\;1116$",align=E);

transform sh = shift(1.5,0);

label(sh*(x+dx,y),"$\color{blue}8370$",align=E);

label(sh*(x+dx,y-dy),"$\color{blue}1116$",align=E);

draw(sh*(x+dx,y-1.5dy)--sh*(0.6+x,y-1.5dy));
label(sh*(x+dx,y-2dy),"$\color{blue}9486$",align=E);
*/

