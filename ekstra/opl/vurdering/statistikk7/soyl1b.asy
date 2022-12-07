import stat7;
settings.outformat="png";
size(9cm,5.5cm,keepAspect=false);
settings.render = 5;

path b = unitsquare;
pen p = blue;

real dx = 0.5;
real a = 0.75;

mkgrid((0,7),(0,9),dx=10,dy=1);
yaks(0,9,tck=true,tckl=true,tc=1,bex=0,ar=None);

fill(shift(a,0)*scale(1,6)*b,p);
label("Iphone",(dx+a,0),S);

fill(shift(3dx+a,0)*scale(1,8)*b,p);
label("Samsung",(4dx+a,0),S);

fill(shift(6dx+a,0)*scale(1,3)*b,p);
label("Nokia",(7dx+a,0),S);

fill(shift(9dx+a,0)*scale(1,7)*b,p);
label("Sony",(10dx+a,0),S);

