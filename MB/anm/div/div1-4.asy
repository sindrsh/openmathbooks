import "../anmpdf.asy" as anm;
defaultpen(fontsize(10 pt));

label((-3.65,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt),align=E);

label("$68:4=$",(-3.5,1),E);

transform sh = shift(0,0);
real dy = 0.5;
real dx = 1;
real y = 1;
real b = 0.85*dx;

path p1 = (0,0)--(3dx,0);
path p2 = (0,0)--(0,-4dy);

draw(shift(0,y-dy/2)*sh*p1);
draw(shift(0,y+dy/2)*sh*p2);
draw(shift(dx,y+dy/2)*sh*p2);
draw(shift(2dx,y+dy/2)*sh*p2);
draw(shift(3dx,y+dy/2)*sh*p2);


label("$\color{blue}\cdot\,4$",sh*(b,y),W);



label("$\color{black}10$",sh*(b,y-dy),W);
label("$\color{black}40$",sh*(b+dx,y-dy),W);

label("$\color{black}40$",sh*(b+2dx,y-dy),W);

label("$\color{blue}7$",sh*(b,y-2dy),W);
label("$\color{deepgreen}28$",sh*(b+dx,y-2dy),W);
/*
label("$\color{black}68$",sh*(b+2dx,y-2dy),W);

draw(shift(0,y-2.5dy)*sh*p1);
label("$\color{black}17$",sh*(b,y-3dy),W);

*/







