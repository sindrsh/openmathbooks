import inh;
import tri;
import figs;
unitsize(0.5cm);


path p = (0,0) -- (1,0);
pen pp = black;

label("Triangle",(0,0),W);

draw(rotate(30)*p,pp,arrow=Arrow(TeXHead));
draw(rotate(-30)*p,pp,arrow=Arrow(TeXHead));

label("Right triangle",(1,0.5),E);
label("Isosceles triangle",(1,-0.5),E);


draw(shift(7.25,-0.5)*p,pp,arrow=Arrow(TeXHead));
label("Equilateral triangle",(8.25,-0.5),E);




