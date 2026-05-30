import "../../inh.asy" as inh;
unitsize(2cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
import three;
currentprojection = orthographic(50,50,25);
import fig3d;

revolution r=cylinder(O,1,6/7,Z);

draw(r);
//draw(surface(r), white);

real v = 135/180*pi;
dot((0,0,0));
triple pO=(0,0,0), pA=(cos(v),sin(v),0);
draw(pO--pA, dotted, L="7");
draw(pO--(0,0,6/7), L=Label("6", position=Relative(0.8)),dotted);
draw(unitdisk, blue+opacity(0.2));

dot((0,0,6/7));

mksq3(-(0,0,1.5),pA,pO,l=0.15);


