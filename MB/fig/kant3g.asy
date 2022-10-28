import inh;
import tri;
import figs;
unitsize(0.5cm);


path p = (0,0) -- (1,0);
pen pp = black;

label("Firkant",(-0.4,0));

draw(shift(1,0)*p,pp,arrow=Arrow(TeXHead));


label("Trapes",(2,-0.075),E);

draw(shift(4.75,0)*p,pp,arrow=Arrow(TeXHead));
label("Parallellogram",(5.75,-0.075),E);

draw(shift(11,0)*rotate(30)*p,pp,arrow=Arrow(TeXHead));
draw(shift(11,0)*rotate(-30)*p,pp,arrow=Arrow(TeXHead));

label("Rombe",(12,0.5),E);
label("Rektangel",(12,-0.5),E);

pair A = (17,0.15);
pair Am = (17,-0.15);
pair B = (14.9,0.5);
pair C = (15.8,-0.5);

draw(B--A,arrow=Arrow(TeXHead));
draw(C--Am,arrow=Arrow(TeXHead));

label("Kvadrat",(17,0),E);


