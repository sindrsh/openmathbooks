import "../anm.asy" as anm;
import "../anmfigs.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 2}",blue+fontsize(8pt));

settings.outformat="pdf";

real xsh= -2;
real ysh= 1;
real yb=0.5;
real ys = yb-0.5;
brok(7,1,3, sh=(xsh,yb));
label("$\frac{3}{7}$",(xsh+1/2,ysh));

label("$\frac{2}{7}$",(xsh+1/2+1.5,ysh));
brsym("+", xsh+1.25,ys=ys);
brok(7,1,2, sh=(xsh+1.5,yb));

brsym("=", xsh+2.75,ys=ys);


brok(7,1,5, sh=(xsh+3,yb));
label("$\frac{5}{7}$",(xsh+3.5,ysh));

