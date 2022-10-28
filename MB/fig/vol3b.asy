unitsize(2cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
settings.render = 5;
import three;
currentprojection = orthographic(50,50,25);
import fig3d;

revolution r=cylinder(O,1,1.5,Z);

draw(r);
draw(surface(r), blue+opacity(0.1));

real v = 135/180*pi;
dot((0,0,0));
triple pO=(0,0,0), pA=(cos(v),sin(v),0);
draw(pO--pA, dotted, L="$r$");
draw(pO--(0,0,1.5), L="$h$",dotted);
label("$G$", (0,0,0), 4*W);

dot((0,0,1.5));

mksq3(-(0,0,1.5),pA,pO,l=0.15);

draw(-1.1*(cos(v),sin(v),-0.4)-- -(cos(v),sin(v),-0.4), white);
draw(1.1*(cos(v),sin(v),-0.4)-- (cos(v),sin(v),-0.4), white);
draw(1.88Z--1.9Z, white);

