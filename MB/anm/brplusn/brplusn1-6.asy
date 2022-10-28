import "../anm.asy" as anm;
import "../anmfigs.asy" as figs;

label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

settings.outformat="pdf";
real xsh= -3.5;
real ysh= 0.5;
real yb=0.5;
real ys = yb-yb;


label("$\frac{3}{5}$",(xsh+1/2,ysh+0.5));
label("$\frac{1}{2}$",(xsh+1.5+1/2,ysh+0.5));

brok(5,1,3,sh=(xsh,ysh));
brsym("-", xsh+1.25,ys=ys);
brok(1,2,1, p=red, sh=(xsh+1.5,ysh));
brsym("=", xsh+2.75,ys=ys);


brok(5,2,6, sh=(xsh+3,ysh));

label("$\frac{6}{10}$",(xsh+3+1/2,ysh+0.5));
label("$\frac{5}{10}$",(xsh+4.5+1/2,ysh+0.5));
brsym("-", xsh+4.25,ys=ys);
brok(5,2,1, p=red, sh=(xsh+4.5,ysh));

pair sh2 = (xsh+5.2,ysh-0.25);
teller(5,2,sh=(xsh+3,ysh),sh2=sh2,p=red);
teller(5,2,sh=(xsh+4,ysh),sh2=sh2,p=red);
teller(5,2,sh=(xsh+2,ysh),sh2=sh2,p=red);
teller(5,2,sh=(xsh+1,ysh),sh2=sh2,p=red);

brsym("=", xsh+5.75,ys=ys);
label("$\frac{1}{10}$",(xsh+6+1/2,ysh+0.5));
brok(5,2,1, p=blue, sh=(xsh+6,ysh));

label("$\frac{3}{5}-\frac{1}{2}=\frac{3\cdot2}{5\cdot2}-\frac{1\cdot5}{2\cdot5}=\frac{6}{10}-\frac{5}{10}$",(-3.5,-1.5), E);
/*
label("$\frac{3}{5}-\frac{1}{2}=\frac{3\cdot2}{5\cdot2}-\frac{1\cdot5}{2\cdot5}=\frac{6}{10}-\frac{5}{10}=\frac{1}{10}$",(-3.5,-1.5), E);
*/
