import "../anm.asy" as figs;
import minus;
defaultpen(fontsize(10 pt));

label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));
sh = shift((1,1));



label((-3.5,1),"$204,6-93,7=110,9$",align=E);

real y = 1.5;
real s = 3;
real dx = 1.5;
real dy = 0.5;

draw((0.5,y-dy/2)--(3,y-dy/2));

label("93,7",(s,y),W);
label("94,0",(s,y-dy),W);
label("94,6",(s,y-2dy),W);
label("100,6",(s,y-3dy),W);
label("104,6",(s,y-4dy),W);
label("204,6",(s,y-5dy),W);


label("0,3",(s-dx,y-dy),W);
label("0,6",(s-dx,y-2dy),W);
label("6\phantom{,0}",(s-dx,y-3dy),W);
label("4\phantom{,0}",(s-dx,y-4dy),W);
label("100\phantom{,0}",(s-dx,y-5dy),W);

draw((0.5,y-5dy-dy/2)--(3,y-5dy-dy/2));



label("110,9",(s-dx,y-6dy),W);


