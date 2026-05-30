import "../../inh" as inh;
import figs;
unitsize(2 cm);

brok(4,2,6); 


brsym("$=$",1.25);

pair A = (1.5,0);
brok(4,2,1,sh=A);
teller(4,2, sh=(1,0),A);
teller(4,2, sh=(2,0),A); 
brsym("$+$",2.75);

A = (3,0);
brok(4,2,sh=A); 
teller(4,2, sh=(0,-1),sh2=A);
teller(4,2, sh=(1,-1),sh2=A);
teller(4,2, sh=(2,-1),sh2=A);


