import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = -4;
int b = 4;
mkgrid((a,b),(a,b));
xaks(a,b,bex=1.10,tck=true);
yaks(a,b,bex=1.10,tck=true);


dott((-1,3),"$(-1, 3)$",W);
dott((4, -4),"$(4, -4)$",N);
dott((-2,1),"$(-2, 1)$",N);
dott((-4,-4),"$(-4, -4)$",N);

