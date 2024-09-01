unitsize(1cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
settings.render = 10;
currentprojection = orthographic(50,50,25);
import fig3d;

real r=1, h=1.5;
real v = 135/180*pi;
triple pO=(0,0,0), pS=(0,0,h), pA=(r*cos(v),r*sin(v),0);
revolution CoRev=cone(pO,r,h,axis=Z,n=1);

draw(CoRev,0.75bp+blue);

draw(surface(CoRev),blue+opacity(0.1));
