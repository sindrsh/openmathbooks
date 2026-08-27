import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1cm);


real a = 5;

mkgrid((-a,a),(-a,a));
xaks(-a,a,tck=true,bex=1.1,l="$x$");
yaks(-a,a,tck=true,bex=1.1, l="$y$");


pair a = (2,2);
pair A = (0,-2);
draw(A--A+a, blue,arrow=Arrow,L=Label("$\vec{a}$",align=SE,position=MidPoint));


pair a = (1,-3);
pair A = (-4,5);
draw(A--A+a, blue,arrow=Arrow,L=Label("$\vec{b}$",align=E,position=MidPoint));


pair a = (-2,-4);
pair A = (5,5);
draw(A--A+a, blue,arrow=Arrow,L=Label("$\vec{c}$",align=NW,position=MidPoint));

pair a = (6,1);
pair A = (-2,-4);
draw(A--A+a, blue,arrow=Arrow,L=Label("$\vec{d}$",align=S,position=MidPoint));

