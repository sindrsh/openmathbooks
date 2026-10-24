import "../../inhopg.asy" as inhopg;
import figs;
size(8cm,5.5cm,keepAspect=false);

path b = unitsquare;
pen p = blue;

real dx = 0.5;
real a = 0.75;

mkgrid((0,13),(0,3),dx=13);
yaks(0,3,tck=true,tckl=true,bex=0,ar=None);

label(rotate(90)*Label("frekvens"),(-1.5,1.5));

filldraw(shift(a,0)*scale(1,2)*b,p);
label("0",(dx+a,0),S);

filldraw(shift(3dx+a,0)*scale(1,2)*b,p);
label("1",(4dx+a,0),S);


filldraw(shift(6dx+a,0)*scale(1,3)*b,p);
label("4",(7dx+a,0),S);

filldraw(shift(9dx+a,0)*scale(1,2)*b,p);
label("5",(10dx+a,0),S);

filldraw(shift(12dx+a,0)*scale(1,2)*b,p);
label("6",(13dx+a,0),S);

filldraw(shift(15dx+a,0)*scale(1,1)*b,p);
label("7",(16dx+a,0),S);

filldraw(shift(18dx+a,0)*scale(1,2)*b,p);
label("8",(19dx+a,0),S);

filldraw(shift(21dx+a,0)*scale(1,1)*b,p);
label("14",(22dx+a,0),S);

label("antall epler",(6,-0.75));

label("''Hvor mange epler spiser du i løpet av uka?''",(5,3.5));


