import inh;
unitsize(1cm);
real dy =-0.5;
real x = 1;
real y = 0;
real dx = -0.19;
real dy2 = 0.25;
real dx2 = -0.03;

transform sh = shift(0.5,-1);
label("${\color{blue}2}{\color{deepgreen}4}\cdot3=72$",(0,0));

label("1",sh*(2dx+dx2,dy2),black+fontsize(6pt));
label("${\color{blue}6\color{deepgreen}2}$",sh*(0,0),W);

label("$72$",sh*(0,dy),W);

draw(sh*shift(-1,0.5dy)*((0,0)--(1,0)));


