import "../anmpdf.asy" as figs;
label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));
usepackage("icomma");

real dx = 0.35;
real dy = -0.45;

transform sh = shift(-1.5,-0.25);
transform sh2 = shift(3,-0.25);

label("$83,5+26,9=110,4$",shift(-3,1)*(0,0),align=E);

label("8",sh*(0,0),black);
label("3",sh*(dx,0));
label("5",sh*(2dx,0));
label(",",sh*(1.4dx,-0.15));
label("$+$",sh*(-3dx,dy));
label("$=$",sh*(-3dx,2dy-0.025));

label("2",sh*(0,dy));
label("6",sh*(dx,dy));
label("9",sh*(2dx,dy));
label(",",sh*(1.4dx,dy-0.15));
draw(shift(-1.5dx,1.5dy)*sh*scale(4)*((0,0)--(dx,0)));

label("$1$",sh*(dx,-0.75dy),fontsize(6pt));

label("4",sh*(2dx,2dy));
label(",",sh*(1.4dx,2dy-0.15));



label("$1$",sh*(0,-0.75dy),black+fontsize(6pt));
label("0",sh*(dx,2dy));

label("$1$",sh*(-dx,-0.75dy),black+fontsize(6pt));

label("1",sh*(0,2dy));
label("1",sh*(-dx,2dy));

