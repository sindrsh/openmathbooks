import "../anmpdf.asy" as figs;
label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

real dx = 0.35;
real dy = -0.45;

transform sh = shift(-1.5,-0.25);
transform sh2 = shift(3,-0.25);

label("$279+46=$",shift(-3,1)*(0,0),align=E);

label("2",sh*(0,0));
label("7",sh*(dx,0));
label("9",sh*(2dx,0),blue);

label("$+$",sh*(-2dx,dy));
label("$=$",sh*(-2dx,2dy-0.025));

label("4",sh*(dx,dy));
label("6",sh*(2dx,dy),blue);
draw(shift(-0.5dx,1.5dy)*sh*scale(3)*((0,0)--(dx,0)));



label("${\color{blue}9}+{\color{blue}6}={\color{orange}1}{\color{heavygreen}5}$",sh2*(0,0),align=W,fontsize(10pt));
/*
label("${\color{blue}1}+{\color{blue}7}+{\color{blue}4}={\color{orange}1}{\color{heavygreen}2}$",sh2*(0,1.25dy),align=W,fontsize(10pt));


label("$1$",sh*(0,-0.75dy),orange+fontsize(6pt));
label("$1$",sh*(dx,-0.75dy),orange+fontsize(6pt));

label("3",sh*(0,2dy));
label("2",sh*(dx,2dy));
label("5",sh*(2dx,2dy));
*/
