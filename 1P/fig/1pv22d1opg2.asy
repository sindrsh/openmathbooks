import inh;
import figs;
size(8cm,5.5cm,keepAspect=false);

path b = unitsquare;
pen p = cmyk(green);

real dx = 1;
real a = 0.75;

mkgrid((0,12),(0,1000),dx=13,dy=200);
yaks(0,1200,tc=200,tck=true,tckl=true,bex=0,ar=None);

fill(shift(a,0)*scale(1,650)*b,p);
label("2018",(dx/2+a,0),S);

fill(shift(3dx+a,0)*scale(1,800)*b,p);
label("2019",(3.5dx+a,0),S);


fill(shift(6dx+a,0)*scale(1,900)*b,p);
label("2020",(6.5dx+a,0),S);

fill(shift(9dx+a,0)*scale(1, 1000)*b,p);
label("2021",(9.5dx+a,0),S);


label(rotate(90)*Label("Antall elever"),(-2.5,600));
label("Elever ved skolen",(5,1300));


