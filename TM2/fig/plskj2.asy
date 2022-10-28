settings.outformat="pdf";
defaultpen(fontsize(11pt));
settings.render=5; 
import three;
import mods;
size(8cm,0);
triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

picture pic1;
path3 g=plane(O=(-0.5,-0.5,0), X, Y);
draw(surface(g),paleblue+opacity(0.7),nolight);

picture pic2;
path3 l=rotate(60,Y)*rotate(90,Z)*g;
draw(surface(l),palegreen+opacity(0.7),nolight);
//draw(A --P, dotted,L=Label("$h$", position=Relative(0.5)));
