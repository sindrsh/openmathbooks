import inh;
import tri;
import figs;
unitsize(0.5cm);


path p = (0,0) -- (1,0);
pen pp = black;

label("Trekant",(0,0),W);

draw(rotate(30)*p,pp,arrow=Arrow(TeXHead));
draw(rotate(-30)*p,pp,arrow=Arrow(TeXHead));

label("Rettvinklet trekant",(1,0.5),E);
label("Likebeint trekant",(1,-0.5),E);


draw(shift(7.25,-0.5)*p,pp,arrow=Arrow(TeXHead));
label("Likesidet trekant",(8.25,-0.5),E);




