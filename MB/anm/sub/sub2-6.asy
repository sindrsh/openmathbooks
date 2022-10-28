import "../anmpdf.asy" as figs;
label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));

real dx = 0.35;
real dy = -0.45;

transform sh = shift(-1.5,-0.25);
transform sh2 = shift(3,0);

path p = ((0,0)-0.05*(cos(pi/6),sin(pi/6))--0.2*(cos(pi/6),sin(pi/6)));

label("$201-138=$",shift(-3,1)*(0,0),align=E);

label("2",sh*(0,0));
label("0",sh*(dx,0),blue);
label("1",sh*(2dx,0));

label("$-$",sh*(-2dx,dy));
label("$=$",sh*(-2dx,2dy-0.025));

label("1",sh*(0,dy));
label("3",sh*(dx,dy),red);
label("8",sh*(2dx,dy));
draw(shift(-0.5dx,1.5dy)*sh*scale(3)*((0,0)--(dx,0)));

draw(sh*shift(0.8dx,-0.65dy)*p);
label("$10$",sh*(dx,-0.75dy),blue+fontsize(6pt));
label("$10$",sh*(2dx,-0.75dy),fontsize(6pt));
draw(sh*shift(0.8dx-dx,-0.1dy)*p);
label("3",sh*(2dx,2dy));
/*

label("$10$",sh*(dx,-0.75dy),fontsize(6pt));
draw(sh*shift(0.8dx-dx,-0.1dy)*p);

label("${\color{black}10}+{\color{black}5}-{\color{black}7}=\color{black}8$",sh2*(0,1.25dy),align=W,fontsize(10pt));

label("\color{black}8",sh*(dx,2dy));


label("\color{heavygreen}1",sh*(0,2dy));


//draw(sh*shift(0.8dx,-0.65dy)*p);
*/

