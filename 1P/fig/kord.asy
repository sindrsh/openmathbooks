import inh;
import drwgrph;
unitsize(0.75 cm);

int a = 6;
int b = 6;
mkgrid((0,a),(0,a));
xaks(0,a,bex=1.10,tck=true);
yaks(0,b,bex=1.10,tck=true);


dott((2,3),"$(2, 3)$",N);
dott((5,1),"$(5, 1)$",N);
dott((0,0),"$(0, 0)$",SW);

label(rotate(90)*Label("vertikalakse"),(-1,3.5));
label("horisontalakse",(3.5,-1));
