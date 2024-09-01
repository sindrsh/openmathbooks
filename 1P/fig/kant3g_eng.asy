import inh;
import tri;
import figs;
defaultpen(fontsize(10 pt));
unitsize(0.5cm);


path p = (0,0) -- (1,0);
pen pp = black;

label("Quadrilateral",(-1.2,0));

draw(shift(1,0)*p,pp,arrow=Arrow(TeXHead));


label("Trapezoid",(2,-0.075),E);

draw(shift(5.3,0)*p,pp,arrow=Arrow(TeXHead));
label("Parallelogram",(6.2,-0.075),E);

draw(shift(11,0)*rotate(30)*p,pp,arrow=Arrow(TeXHead));
draw(shift(11,0)*rotate(-30)*p,pp,arrow=Arrow(TeXHead));

label("Rhombus",(12,0.5),E);
label("Rectangle",(12,-0.5),E);

pair A = (16.5,0.1);
pair Am = (16.5,-0.1);

pair B = (15.5,0.5);
pair C = (15.5,-0.5);

draw(B--A,arrow=Arrow(TeXHead));
draw(C--Am,arrow=Arrow(TeXHead));

label("Square",(16.5,0),E);


