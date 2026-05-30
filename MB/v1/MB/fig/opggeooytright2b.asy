import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 3;
int b = 3;
mkgrid((0,a),(0,b));
xaks(0,a,bex=1.10,tck=true);
yaks(0,b,bex=1.10,tck=true);

pair A =(2,0);
pair B =(3,3); 
pair C =(0,1); 

draw(A--B--C--A, blue);
dott(A);
dott(B);
dott(C);


