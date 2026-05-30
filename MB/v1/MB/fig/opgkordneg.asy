import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = -3;
int b = 3;
mkgrid((a,b),(a,b));
xaks(a,b,bex=1.10,tck=true);
yaks(a,b,bex=1.10,tck=true);


dott((-1,0),"$(-1, 0)$",N+0.5W);
dott((-2, 3),"$(-2, 3)$",S);
dott((0,-3),"$(0, -3)$",E);
dott((3,-1),"$(3, -1)$",S);

