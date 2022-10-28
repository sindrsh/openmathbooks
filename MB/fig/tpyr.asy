unitsize(0.7cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
settings.render = 5;
import three;
import fig3d;

currentprojection=orthographic(5,3,3);

real b = 1.2;
triple pA=(b,b,0), pB=(-b,b,0), 
       pC=(-b,-b,0), pD=(b,-b,0),
       pS=(0,0,3);
draw(pS--pA--pS--pB--pA);
draw(pC--pS^^pC--pB);
draw(pC--pA);
draw(surface(pA--pB--pC--cycle), blue+opacity(0.1));
