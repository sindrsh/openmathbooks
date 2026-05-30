import "../anmpdf.asy" as anm;
defaultpen(fontsize(10 pt));

real a = 15;
real b = 4.5;
filldraw(shift(-a/2,-b/2)*scale(a,b)*unitsquare,white,white);

label((-6.65,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt),align=E);



real bx = 2;
real by = 1;
path tb = box((0,0),(bx,by));
transform shb = shift(-7,0.25);

defaultpen(fontsize(6 pt));
draw(shb*tb);
label("kilo",shb*(bx/2,3by/4));
label("(k)",shb*(bx/2,by/4));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("hekto",shb*(bx/2,3by/4));
label("(h)",shb*(bx/2,by/4));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("deka",shb*(bx/2,3by/4));
label("(da)",shb*(bx/2,by/4));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("gram",shb*(bx/2,7by/8),black+fontsize(4pt));
label("liter",shb*(bx/2,5.5by/8),black+fontsize(4pt));
label("meter",shb*(bx/2,4by/8),black+fontsize(4pt));
label("(g/L/m)",shb*(bx/2,by/4));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("desi",shb*(bx/2,3by/4));
label("(d)",shb*(bx/2,by/4));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("centi",shb*(bx/2,3by/4));
label("(c)",shb*(bx/2,by/4));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("milli",shb*(bx/2,3by/4));
label("(m)",shb*(bx/2,by/4));

label("$4,8$ dm\,$=$\phantom{\,480} mm",(-2,-0.25),align=E);

real dx = 0.17;
real dy = -0.08;

pen pj = blue;
real dj = -0.075;
path p = (0,dj)..(dx,dj-0.10)..(2dx,dj);

transform sh = shift(-2,-1);

/*
label("4",sh*(dx,dy/2));
label(",",sh*(2dx,dy-0.04));
label("8",sh*(3dx,dy/2));

draw(sh*shift(2dx,0)*p,black+0.2pt);
label(",",sh*(4dx,dy-0.04));

draw(sh*shift(4dx,0)*p,black+0.2pt);
label(",",sh*(6dx,dy-0.04));

label("$0$",sh*(5dx,dy/2));
*/
