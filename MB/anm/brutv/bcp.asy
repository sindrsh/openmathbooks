import "../anm.asy" as anm;
import "../anmfigs.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

settings.outformat="pdf";

real xsh= -3;
real ysh= 0.5;

brok(5,1,3, sh=(xsh,0));
label("$\frac{3}{5}$",(xsh+1/2,ysh));
label("$\frac{6}{10}$",(xsh+1/2+1.5,ysh));


brsym("=", xsh+1.25);
brok(5,2,6, sh=(xsh+1.5,0));


label("$\frac{3}{5}=\frac{3\cdot2}{5\cdot2}=\frac{6}{10}$",(1/2,ysh),align=E);


