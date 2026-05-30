import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = -4;
int b = 3;
mkgrid((-4,0),(-1,3));
xaks(a,0.2,bex=1.10,tck=true);
yaks(-1,b,bex=1.10,tck=true);

pair A =(-4,0);
pair B =(-2,-1); 
pair C =(0,3); 

draw(A--B--C--A, blue);
dott(A);
dott(B);
dott(C);


