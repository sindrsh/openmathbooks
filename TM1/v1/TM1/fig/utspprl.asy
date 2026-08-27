import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

unitsize(1cm);

pair O = (0,0);
pair A = (3,1);
pair B = (1, 2);

draw(O--A,arrow=Arrow(), L=Label("$\vec u$", position=Relative(0.5)));
draw(O--B,arrow=Arrow(), L=Label("$\vec v$", position=Relative(0.5),NW));

draw(A--A+B,arrow=Arrow(), L=Label("$\vec v$", position=Relative(0.5),SE));
draw(B--B+A,arrow=Arrow(), L=Label("$\vec u$", position=Relative(0.5),NW));

