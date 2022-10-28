import three;
size(4 cm, 3 cm, keepAspect=false);
settings.outformat="pdf";
settings.render=0;
defaultpen(fontsize(11pt));
currentprojection=orthographic(1,-0.5,0.5);

//draw(O--2X ^^ O--2Y ^^ O--2Z, black);
triple A = 2X;
triple B = 2Y;
triple C = 2*(1, 0, 1.2);

//path3 g=O--A--A+B--B--cycle;
//draw(g);
//draw(surface(g),paleblue,nolight);

draw(plane(O=O, A, B), blue);
draw(plane(O=C, A, B), blue);
draw(plane(O=O, A, C), blue);
draw(plane(O=B, A, C), blue);
draw(plane(O=O, A, C), blue);

draw(A -- O,arrow=Arrow3(DefaultHead2), L=Label("$\vec v$", position=Relative(0.5)));
draw(A -- A+B, arrow=Arrow3(DefaultHead2,emissive(black)), L=Label("$\vec u$", position=Relative(0.5)));
draw(A -- A+C, arrow=Arrow3(DefaultHead2), L=Label("$\vec w$", position=Relative(0.5)));



