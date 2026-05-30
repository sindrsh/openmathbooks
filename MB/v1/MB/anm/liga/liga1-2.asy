import "../anmpdf.asy" as anm;
import liginh;
defaultpen(fontsize(10 pt));

label((-3.65,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt),align=E);


label("$=$", (x, eq_y));
label("$x-4$", (x-dx, y),align=W);
label("$3$", (x+dx, y),align=E);


y = y+dy;
eq_y = eq_y+dy;
label("$=$", (x, eq_y));
label("$x-4\color{blue}+4$", (x-dx, y),align=W);
label("$3\color{blue}+4$", (x+dx, y),align=E);


y = y+dy;
eq_y = eq_y+dy;
label("$=$", (x, eq_y));
label("$x$", (x-dx, y),align=W);
label("$7$", (x+dx, y),align=E);













