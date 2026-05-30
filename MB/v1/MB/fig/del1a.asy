import "../../inh" as inh;
import figs;
unitsize(0.5 cm);

db(3,4,l=true);
sym("$=$",4);

db(3,1, sh=(5,4.5), l=false);
db(3,1, sh=(5,0), l=false);
db(3,1, sh=(5,1.5), l=false);
db(3,1, sh=(5,3), l=false);

label("3",(8,5),E);
label("3",(8,0.5),E);
label("3",(8,2),E);
label("3",(8,3.5),E);

sym("$=$",9.5);

db(1,4,l=true, sh=(10.5,0));
db(1,4,l=true, sh=(12,0));
db(1,4,l=true, sh=(13.5,0));
