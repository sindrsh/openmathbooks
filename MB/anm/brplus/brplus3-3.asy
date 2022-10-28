import "../anm.asy" as anm;
import "../anmfigs.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 3}",blue+fontsize(8pt));

settings.outformat="pdf";

real xsh= -2;
real ysh= 1;
real yb=0.5;
real ys = yb-0.5;
brok(3,3,8, sh=(xsh,yb));
label("$\frac{\color{black}8}{9}$",(xsh+1/2,ysh));

label("$\frac{\color{black}3}{9}$",(xsh+1/2+1.5,ysh));
brsym("-", xsh+1.25,ys=ys);
brok(3,3,3, sh=(xsh+1.5,yb),p=red);

brsym("=", xsh+2.75,ys=ys);

brok(5,1,4, sh=(xsh+3,yb));
label("$\frac{5}{9}$",(xsh+3.5,ysh));

