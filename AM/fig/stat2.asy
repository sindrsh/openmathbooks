import inh;
import figs;
size(9cm,5.5cm,keepAspect=false);

path b = unitsquare;
pen p = blue;

real dx = 0.5;
real a = 0.75;

mkgrid((0,10),(0,100),dx=10,dy=25);
yaks(0,100,tck=true,tckl=true,tc=25,bex=0,ar=None);

label(rotate(90)*Label("frekvens"),(-1.5,50));

fill(shift(a,0)*scale(1,46)*b,p);
label("tiger",(dx+a,0),S);

fill(shift(3dx+a,0)*scale(1,23)*b,p);
label("l\o ve",(4dx+a,0),S);

fill(shift(6dx+a,0)*scale(1,17)*b,p);
label("krkd.",(7dx+a,0),S);

fill(shift(9dx+a,0)*scale(1,91)*b,p);
label("hund",(10dx+a,0),S);

fill(shift(12dx+a,0)*scale(1,72)*b,p);
label("katt",(13dx+a,0),S);

fill(shift(15dx+a,0)*scale(1,51)*b,p);
label("andre",(16dx+a,0),S);

label("''Hva er favorittdyret ditt?''",(5,110));



