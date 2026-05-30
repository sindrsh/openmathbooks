import "../anmpdf.asy" as anm;
defaultpen(fontsize(10 pt));

label((-3.65,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt),align=E);

label("$84=$",(0,1.5),E);


//label("$84=2\cdot2\cdot3\cdot7$",(-3.5,1),E);

transform sh = shift(-2,-0.2);
transform shp = shift(2.5,-0.6);

real dy = 0.5;
real dx = 1;
real y = 1;
real b = 0.85*dx;

path p1 = (0,0)--(3dx,0);
path p2 = (0,0)--(0,-4dy);

label("\color{black}7",shp*(0,0));
label("\color{black}5",shp*(0,dy));
label("\color{black}3",shp*(0,2dy));
label("\color{blue}2",shp*(0,3dy));

label("${\color{orange}42}:{\color{blue}2}=21$",(-1.5,-2),E);


draw(shift(0,y-dy/2)*sh*p1);
draw(shift(0,y+dy/2)*sh*p2);
draw(shift(dx,y+dy/2)*sh*p2);
draw(shift(2dx,y+dy/2)*sh*p2);
draw(shift(3dx,y+dy/2)*sh*p2);


label("$:$",sh*(b+dx,y),2W);


label("$\color{black}84$",sh*(b,y-dy),W);
label("$\color{black}2$",sh*(b+dx,y-dy),2W);
label("$\color{orange}42$",sh*(b+2dx,y-dy),W);
/*
label("$\color{black}42$",sh*(b,y-2dy),W);
label("$\color{black}2$",sh*(b+dx,y-2dy),2W);
label("$\color{black}21$",sh*(b+2dx,y-2dy),W);

label("$\color{black}21$",sh*(b,y-3dy),W);
label("$\color{black}3$",sh*(b+dx,y-3dy),2W);
label("$\color{black}7$",sh*(b+2dx,y-3dy),W);

*/





