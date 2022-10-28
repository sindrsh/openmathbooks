import inh;
import figs;
unitsize(2 cm);

brok(2,4,2); 
teller(2,4, sh=(1,0));
teller(2,4, sh=(1,-1));
teller(2,4, sh=(1,-2));
teller(2,4, sh=(0,-2));

brsym("$=$",1.25);

pair A = (1.5,0);
brok(2,4,2,sh=A);
teller(2,4, sh=(0,-2),A); 
brsym("$+$",2.75);

A = (3,0);
brok(2,4,sh=A); 
teller(2,4, sh=(1,0),sh2=A);
teller(2,4, sh=(1,-1),sh2=A);
teller(2,4, sh=(1,-2),sh2=A);


