import "../../inh.asy" as inh;
unitsize(1.5cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
import three;
currentprojection = orthographic(50,50,25);
import fig3d;

revolution r=cylinder(O,1,1.5,Z);

draw(r);
//draw(surface(r), white);

real v = 135/180*pi;
dot((0,0,0));
triple pO=(0,0,0), pA=(cos(v),sin(v),0);
draw(pO--pA, dotted, L="$r$");
draw(pO--(0,0,1.5), L="$h$",dotted);
label("$G$", (0,0,0), 4*W);
draw(unitdisk, blue+opacity(0.2));

dot((0,0,1.5));

mksq3(-(0,0,1.5),pA,pO,l=0.15);

draw(-1.1*(cos(v),sin(v),-0.4)-- -(cos(v),sin(v),-0.4), white);
draw(1.1*(cos(v),sin(v),-0.4)-- (cos(v),sin(v),-0.4), white);
draw(1.88Z--1.9Z, white);

