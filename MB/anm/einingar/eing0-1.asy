import "../anmpdf.asy" as anm;
defaultpen(fontsize(10 pt));

real a = 15;
real b = 4.5;
filldraw(shift(-a/2,-b/2)*scale(a,b)*unitsquare,white,white);

label((-6.65,1.8),"\textit{Prefiksar}",blue+fontsize(8pt),align=E);



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

//
transform shb = shift(-7,0.25-by);

draw(shb*tb);
label("$1000$",shb*(bx/2,by/2));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("$100$",shb*(bx/2,by/2));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("$10$",shb*(bx/2,by/2));


shb = shift(bx,0)*shb;
draw(shb*tb);
label("$1$",shb*(bx/2,by/2));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("$\frac{1}{10}$",shb*(bx/2,by/2));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("$\frac{1}{100}$",shb*(bx/2,by/2));

shb = shift(bx,0)*shb;
draw(shb*tb);
label("$\frac{1}{1000}$",shb*(bx/2,by/2));




