import "../anmpdf.asy" as anm;
import liginh;
defaultpen(fontsize(10 pt));

label((-3.65,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt),align=E);

/*
label("$=$", (x, eq_y));
label("$4x-7$", (x-dx, y),align=W);
label("$3x$", (x+dx, y),align=E);
*/

label("$=$", (x, eq_y));
label("$4x\color{red}-8$", (x-dx, y),align=W);
label("$\color{blue}3x$", (x+dx, y),align=E);

y = y+dy;
eq_y = eq_y+dy;
label("$=$", (x, eq_y));
label("$4x\color{red}-3x$", (x-dx, y),align=W);
label("$\color{blue}8$", (x+dx, y),align=E);
/*
y = y+dy;
eq_y = eq_y+dy;
label("$=$", (x, eq_y));
label("$x$", (x-dx, y),align=W);
label("$7$", (x+dx, y),align=E);
*/






