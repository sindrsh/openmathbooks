import "../anmpdf.asy" as anm;
defaultpen(fontsize(10 pt));

label((-3.65,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt),align=E);

label("$126:3=$",(-3.5,1),E);

transform sh = shift(0,0);
real dy = 0.5;
real dx = 1;
real y = 1;
real b = 0.85*dx;

path p1 = (0,0)--(3dx,0);
path p2 = (0,0)--(0,-5dy);

pen pp0 = black;
pen pp1 = blue;
pen pp2 = deepgreen;

draw(shift(0,y-dy/2)*sh*p1);
draw(shift(0,y+dy/2)*sh*p2);
draw(shift(dx,y+dy/2)*sh*p2);
draw(shift(2dx,y+dy/2)*sh*p2);
draw(shift(3dx,y+dy/2)*sh*p2);


label("$\cdot\,3$",sh*(b,y),W,pp0);


label("$30$",sh*(b,y-dy),W,pp0);
label("$90$",sh*(b+dx,y-dy),W,pp0);
label("$90$",sh*(b+2dx,y-dy),W,pp1);


label("$10$",sh*(b,y-2dy),W,pp0);
label("$30$",sh*(b+dx,y-2dy),W,pp1);

label("$120$",sh*(b+2dx,y-2dy),W,pp2);
/*
label("$2$",sh*(b,y-3dy),W);
label("$6$",sh*(b+dx,y-3dy),W);
label("$126$",sh*(b+2dx,y-3dy),W);

draw(shift(0,y-3.5dy)*sh*p1);
label("$42$",sh*(b,y-4dy),W);

*/






