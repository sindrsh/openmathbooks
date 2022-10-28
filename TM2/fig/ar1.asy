import "../../inh" as inh;
unitsize(1cm);

pair O = (0,0);
pair A = (3,1);
pair B = (2, 3)/2;

draw(O--A,arrow=Arrow(), L=Label("$\vec u$", position=Relative(0.5)));
draw(O--B,arrow=Arrow(), L=Label("$\vec v$", align=NW,position=Relative(0.5)));
draw(A--(A+B)--B, dashed);
label("$A$",(A+B)/2);

