import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 3;
int b = 5;
mkgrid((0,a),(0,b));
xaks(0,a,bex=1.10);
yaks(0,b,bex=1.10);


dott((0,2),"$A=(2, 3)$",W);
dott((3,3),"$B=(0, 0)$",E);
dott((1,5),"$C=(1, 5)$",N+E);
draw((0,2)--(3,3)--(1,5)--(0,2), blue);
