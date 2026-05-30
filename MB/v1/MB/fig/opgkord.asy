import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 6;
int b = 6;
mkgrid((0,a),(0,a));
xaks(0,a,bex=1.10,tck=true);
yaks(0,b,bex=1.10,tck=true);


dott((1,3),"$A$",N);
dott((2,4),"$B$",N);
dott((6,1),"$C$",N);
dott((5,5),"$D$",N);

