import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

unitsize(1.5cm);

pair O = (0,0);
pair A = (3,1);
pair B = (-1, 2);


draw(O--A,arrow=Arrow(), L=Label("$\vec u$", position=Relative(0.5)));
draw(O--B,arrow=Arrow(), L=Label("$\vec v$", position=Relative(0.5),SW));
draw(B--A,arrow=Arrow(), L=Label("$\vec u - \vec v$", align=NE,position=Relative(0.5)));


dv(B,A,O,"$\angle(\vec{u},\vec{v})$",N+0.5E,sc=0.25);
