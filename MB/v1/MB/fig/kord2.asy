import "../../inh" as inh;
import drwgrph;
size(9cm, 7cm, keepAspect=false);

int a = 10;
int b = 5;
mkgrid((0,a),(0,b));
xaks(0,a,bex=1.05,tck=true);
yaks(0,b,bex=1.05,tck=true);


dott((10,5),"$(10, 5)$",N);
dott((3,3),"$(3, 3)$",N);

