settings.outformat="pdf";
defaultpen(fontsize(11pt));
usepackage("esvect");

import mods;
//size(3 cm,2 cm, keepAspect=false);
unitsize(0.8cm);

pair O = (0,0);
pair A = (3,1);
pair B = (-1, 2);

draw(O--A,arrow=Arrow(), L=Label("$\vec u$", position=Relative(0.5)));
draw(B--A,arrow=Arrow(), L=Label("$\vec u - \vec v$", align=NE,position=Relative(0.5)));
draw(O--B,arrow=Arrow(), L=Label("$\vec v$", align=SW,position=Relative(0.5)));

