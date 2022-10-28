unitsize(0.5cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
settings.render = 5;
import three;
currentprojection = orthographic(50,50,25);
import fig3d;

real a = 7;
real h = 6;
revolution r=cylinder(O,a,h,Z);

draw(r);
draw(surface(r), blue+opacity(0.1));

real v = 135/180*pi;
dot((0,0,0));
triple pO=(0,0,0), pA=a*(cos(v),sin(v),0);
draw(pO--pA, dotted, L="$7$");
draw(pO--(0,0,h),dotted);
label("$6$",(0,0,h-3),E);

dot((0,0,h));

mksq3(-(0,0,h),pA,pO,l=0.15);

draw(-1.1*(cos(v),sin(v),-0.4)-- -(cos(v),sin(v),-0.4), white);
draw(1.1*(cos(v),sin(v),-0.4)-- (cos(v),sin(v),-0.4), white);
draw(1.88Z--1.9Z, white);

