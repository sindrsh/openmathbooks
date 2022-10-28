settings.outformat="pdf";
defaultpen(fontsize(11pt));
settings.render=0; 
import three;
import mods;
size(7cm,0);
//unitsize(1cm);

draw(O -- 1.1X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- 1.1Y, L=Label("$y$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- 0.5Z, L=Label("$z$",
position=EndPoint), arrow=Arrow3(TeXHead2));
triple A= 4.3X+4Y;
real a= 4;
real b= 3.5;
triple B = A+a*X+b*Y;
real s=1;
path3 g=O--s*X--s*(X+Y)--s*Y--cycle;
//draw(g);
draw(surface(g),paleblue+opacity(0.5),nolight);

//path3 h=O--s*X--s*(X+Z)--s*Z--cycle;
//draw(surface(h),palegreen,nolight);

draw(plane(O=O, X, 0.4Z), blue);
draw(plane(O=O, Y, 0.4Z), blue);
mksq(-X, Z, O, l=0.07);
mksq(-Y, Z, O, l=0.07);
mksq(-Y, X, O, l=0.07);
draw(0.5X+0.5Y, L=Label("$xy$"), align=E*0);
triple proj = (1,1,1.5);
currentprojection=orthographic(proj);
