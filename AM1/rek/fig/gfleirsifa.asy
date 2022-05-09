import inh;
unitsize(1cm);
real dy =-0.5;
real x = 1;
real y = 0;
real dx = -0.19;
real dy2 = 0.25;
real dx2 = -0.03;

transform sh = shift(0.5,-1);
label("${279}\cdot34=9486$",(0,0));

label("3",sh*(2dx+dx2,dy2),black+fontsize(6pt));
label("2",sh*(3dx+dx2,dy2),black+fontsize(6pt));
label("$\color{blue}886$",sh*(0,0),W);

label("2",sh*(3dx+dx2,dy+dy2),black+fontsize(6pt));
label("2",sh*(4dx+dx2,dy+dy2),black+fontsize(6pt));
label("$\color{deepgreen}617$",sh*(dx,dy),W);

label("$9486$",sh*(0,2dy),W);

draw(sh*shift(-1,1.5dy)*((0,0)--(1,0)));


