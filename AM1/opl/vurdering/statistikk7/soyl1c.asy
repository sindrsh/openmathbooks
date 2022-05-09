import stat7;
settings.outformat="png";
size(9cm,5.5cm,keepAspect=false);
settings.render = 5;

path b = unitsquare;
pen p = blue;

real dx = 0.5;
real a = 0.75;

mkgrid((0,7),(0,30),dx=10,dy=1);
yaks(0,30,tck=true,tckl=true,tc=5,bex=0,ar=None);

fill(shift(a,0)*scale(1,11)*b,p);
label("tiger",(dx+a,0),S);

fill(shift(3dx+a,0)*scale(1,5)*b,p);
label("l\o ve",(4dx+a,0),S);

fill(shift(6dx+a,0)*scale(1,22)*b,p);
label("hund",(7dx+a,0),S);

fill(shift(9dx+a,0)*scale(1,29)*b,p);
label("katt",(10dx+a,0),S);

