unitsize(0.5cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
settings.render = 10;
import three;
import fig3d;

currentprojection=orthographic(5,5,3);

real a = 3;
real b = 2;
real h = 5;
triple pA=(a,b,0), pB=(-a,b,0), 
       pC=(-a,-b,0), pD=(a,-b,0),
       pS=(0,0,h);
draw(pS--(0,0,0), L="$5$",align=E+2S, dotted);
draw(pS--pD--pA--pS--pB--pA);
draw(pD--pC--pS^^pC--pB,dashed);
draw(surface(pA--pB--pC--pD--cycle), blue+opacity(0.1));

mksq3(-pS,pB,(0,0,0),l=0.3,k=0.3);
dot((0,0,0));

label("$3$",pA+1/2*(pB-pA),SE);
label("$2$",pA+1/2*(pD-pA),SW);
