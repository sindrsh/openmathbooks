import inh;
import figs;
unitsize(2cm);

brok(5,1,3);
brsym("-", 1.25);
brok(1,2,1, p=red, sh=(1.5,0));
brsym("=", 2.75);
brok(5,2,6, sh=(3,0));
brsym("-", 4.25);
brok(5,2,1, p=red, sh=(4.5,0));
pair sh2 = (4.5,0);
teller(5,2,sh=(3,0),sh2=sh2,p=red);
teller(5,2,sh=(4,0),sh2=sh2,p=red);
teller(5,2,sh=(2,0),sh2=sh2,p=red);
teller(5,2,sh=(1,0),sh2=sh2,p=red);
