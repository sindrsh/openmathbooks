import graph3;
size(8cm,6cm,keepAspect=false);
currentprojection=orthographic((10,8,5));
settings.outformat = "pdf";
import three;
real a=sqrt(3), b=2, dy=1;

triple f(pair p){
  real x=p.x;
  real y=p.x^2;
  real z=0.5*p.y*(a^2-p.x^2);
  return (x,y,z);
}

triple f0(real t) {return f((t,0));}
triple f1(real t) {return f((t,1));}

surface s=surface(f,(-a,0),(a,1),100);

path3 p0=graph(f0,-a,a,operator ..), p1=graph(f1,-a,a,operator ..);
draw(s,yellow+opacity(.4));
//draw(p0--cycle ^^ p1 ^^ (0,a^2,0)--(0,0,a^2));
draw(surface(p1--cycle),yellow+opacity(.59));

real y = 0.5;
real x = sqrt(y);
triple t1 = f((-x,1));
triple t2 = f((x,1));
path3 p2 = ((-x,y,0)--t1--t2)--(x,y,0)--cycle;
real dy = 0.2;
path3 p3 = ((-x,y,0)--(-x,y+dy,0)--(x,y+dy,0)--(x,y,0)--cycle);
draw(surface(p3), blue+opacity(0.5));
draw(shift((0,0,t2.z))*surface(p3), blue+opacity(0.3));
draw(surface(p2), blue+opacity(0.3));
draw(shift((0,dy,0))*surface(p2), blue+opacity(0.4));
//draw ((b,b^2-dy,0)--(b,a^2+dy,0),blue,Arrow3);
//dot(YZ()*scale3(1.5)*"$(x,x^2,0)$",(b,b^2,0),align=2X+3Z,blue);
//dot(XZ()*scale3(1.5)*format("$(x,%f,0)$",a^2),  (b,a^2,0),align=Y+2Z,blue);

limits((-.5,-.5,-.1),(a,a^2+.5,a^2+.5));
xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
