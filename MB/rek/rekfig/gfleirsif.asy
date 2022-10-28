import inh;
size(8cm);
real dy = 0.4;
real x = 1;
real y = 0;
real dx = -0.15;

transform sh = shift(-1,0);
label(sh*(x-1.2,0.75),"${279}\cdot34=9486$",align=E);

transform sh = shift(-3,0);
label(sh*(x,y),"${200}\cdot30$",align=W);

label(sh*(x+dx,y),"$=6000$",align=E);

label(sh*(x,y-dy),"${\phantom{0}70}\cdot30$",align=W);

label(sh*(x+dx,y-dy),"$=2100$",align=E);

label(sh*(x,y-2dy),"${\phantom{0}9}\cdot30$",align=W);

label(sh*(x+dx,y-2dy),"$=\phantom{0}270$",align=E);

draw(sh*(x-1.5dx,y-2.5dy)--sh*(0.9+x,y-2.5dy));
label(sh*(x+dx,y-3dy),"$\color{blue}\phantom{=}\;8370$",align=E);


transform sh = shift(-0.5,0);
label(sh*(x,y),"${200}\cdot4$",align=W);

label(sh*(x+dx,y),"$=\phantom{0}800$",align=E);

label(sh*(x,y-dy),"${\phantom{0}70}\cdot4$",align=W);

label(sh*(x+dx,y-dy),"$=\phantom{0}280$",align=E);

label(sh*(x,y-2dy),"${\phantom{0}9}\cdot4$",align=W);

label(sh*(x+dx,y-2dy),"$=\phantom{00}36$",align=E);

draw(sh*(x-1.5dx,y-2.5dy)--sh*(0.9+x,y-2.5dy));
label(sh*(x+dx,y-3dy),"$\color{blue}\phantom{=}\;1116$",align=E);

transform sh = shift(1.5,0);

label(sh*(x+dx,y),"$\color{blue}8370$",align=E);

label(sh*(x+dx,y-dy),"$\color{blue}1116$",align=E);

draw(sh*(x+dx,y-1.5dy)--sh*(0.6+x,y-1.5dy));
label(sh*(x+dx,y-2dy),"$\color{deepgreen}9486$",align=E);

