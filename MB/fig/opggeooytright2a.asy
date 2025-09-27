import "../../inh" as inh;
import drwgrph;
unitsize(0.7 cm);

int a = 2;
int b = 5;
mkgrid((0,a),(0,b));
xaks(0,a,bex=1.10,tck=true);
yaks(0,b,bex=1.10,tck=true);

pair A =(0,0);
pair B =(2,1); 
pair C =(0,5); 

draw(A--B--C--A, blue);
dott(A);
dott(B);
dott(C);


