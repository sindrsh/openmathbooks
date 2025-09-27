import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 4;
int b = 3;
mkgrid((0,a),(0,b));
xaks(0,a,bex=1.10,tck=true);
yaks(0,b,bex=1.10,tck=true);


dott((1,0),"",N);
dott((3,1),"",N);
dott((4,2),"",N);
dott((1,2),"",N);

