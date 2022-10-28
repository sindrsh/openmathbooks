defaultpen(fontsize(11pt));
import three;
settings.outformat="pdf";
size(3.6 cm, 3 cm, keepAspect=false);
settings.render=0;
currentprojection=orthographic(5,4,3);

triple pA=(2,2,0), pB=(-2,2,0), 
       pC=(-2,-2,0), pD=(2,-2,0),
       pS=(0,2,5);

draw(pS--pD--pA--pS--pB--pA, blue);
draw(pD--pC--pS^^pC--pB,dashed);

draw(pA--pD, arrow=Arrow3(DefaultHead2), L=Label("$\vec v$",align=S, position=Relative(0.5)));
draw(pA--pB, arrow=Arrow3(DefaultHead2), L=Label("$\vec u$", position=Relative(0.5)));
draw(pA--pS,arrow=Arrow3(DefaultHead2,emissive(black)), L=Label("$\vec w$", position=Relative(0.5)));
