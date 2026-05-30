import "../anm.asy" as figs;
import minus;
defaultpen(fontsize(10 pt));

label((-2.8,1.8),"\textit{Eksempel 3}",blue+fontsize(8pt));
sh = shift((1,1));


label((-3.5,1),"$204,6-93,7=$",align=E);

real y = 1.5;
real s = 3;
real dx = 1.5;
real dy = 0.5;

draw((0.5,y-dy/2)--(3,y-dy/2));

label("\color{deepgreen}93,7",(s,y),W);
label("94,6",(s,y-dy),W);


label("\color{deepgreen}0,9",(s-dx,y-dy),W);

