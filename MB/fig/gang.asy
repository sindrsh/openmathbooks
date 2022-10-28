import inh;
import figs;
unitsize(0.5 cm);


db(I=2, J=4, p=purple, opac=0.5);
db(I=3, J=4, p=green, opac=0.5, sh=(2,0));
label("2",(1,4.5));
label("3",(3.5,4.5));
label("4",(5.5,2.2));
db(5,4, p=black, p1=white);
draw(box((0,0), (5,4)));
