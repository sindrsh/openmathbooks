import graph3;
usepackage("color");
size(6cm,4cm,keepAspect=false);
currentprojection=orthographic((0.5,-1,0.5));
settings.outformat = "pdf";
import three;
defaultpen(fontsize(11pt));;

real a=sqrt(3), b=2, dy=1;
triple f(pair p){
  real y=p.y;
  real x=p.y^2;
  real z=p.x*(a^2-p.y^2);
  return (x,y,z);
}

triple f0(real t) {return f((0,t));}
triple f1(real t) {return f((1,t));}

surface s=surface(f,(0,-a),(1,a),100);

path3 p0=graph(f0,-a,a,operator ..), p1=graph(f1,-a,a,operator ..);
draw(s,yellow+opacity(.6));
//draw(p0--cycle ^^ p1 ^^ (0,a^2,0)--(0,0,a^2));
draw(surface(p1--cycle),yellow+opacity(.59));

real x = a;
real y = sqrt(x);
triple t1 = f((1,-y));
triple t2 = f((1,y));
path3 p2 = ((x,-y,0)--t1--t2--(x,y,0)--cycle);
real dx = 0.2;
path3 p3 = ((x,-y,0)--(x+dx,-y,0)--(x+dx,y,0)--(x,y,0)--cycle);
//draw(surface(p3), blue+opacity(0.5));
//draw(shift((0,0,t2.z))*surface(p3), blue+opacity(0.3));
draw(surface(p2), blue+opacity(0.3));
//draw(shift((dx,0,0))*surface(p2), blue+opacity(0.4));
//draw ((b,b^2-dy,0)--(b,a^2+dy,0),blue,Arrow3);
//dot(YZ()*scale3(1.5)*"$(x,x^2,0)$",(b,b^2,0),align=2X+3Z,blue);
//dot(XZ()*scale3(1.5)*format("$(x,%f,0)$",a^2),  (b,a^2,0),align=Y+2Z,blue);

limits((-.5,-.5,-.1),(a^2+.5,a+2,0.5*a^2+.5));
xaxis3("$x$",Arrow3);
label("$A(x)$",(a,0,.5), p=opacity(1));
//yaxis3("$y$",Arrow3);
//zaxis3("$z$",Arrow3);
