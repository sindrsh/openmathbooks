import "../anmpdf.asy" as anm;
import liginh;
defaultpen(fontsize(10 pt));

label((-3.65,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt),align=E);


label("$=$", (x, eq_y));
label("$8x-4$", (x-dx, y),align=W);
label("$7x+6$", (x+dx, y),align=E);

y = y+dy;
eq_y = eq_y+dy;
label("$=$", (x, eq_y));
label("$8x-7x$", (x-dx, y),align=W);
label("$6+4$", (x+dx, y),align=E);




