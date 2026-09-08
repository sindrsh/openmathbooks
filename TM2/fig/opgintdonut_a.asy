import "../../inhopg.asy" as inh;
import graph3;

size(200,0);
currentprojection=orthographic(4,0,2);

real R=2;
real a=0.5;

triple f(pair t) {
  return ((R+a*cos(t.y))*cos(t.x),(R+a*cos(t.y))*sin(t.x),a*sin(t.y));
}

surface s=surface(f,(pi/2,0),(2pi,2pi),8,8,Spline);

// surface only
//draw(s,lightgray);

// mesh only
// draw(s,nullpen,meshpen=p);

// surface & mesh
draw(s, arpen, render(merge=true));

path3 outline = shift(f(5pi/2)-(0,a, 0)) * circle(c=(0,0,0), r=a, normal=X);
draw(outline, black);

triple O = (0, 0, 0);
triple Rs = f(5pi/2)-(0,a, 0);
triple rs= f(5pi/2);

draw(O--Rs, L="$R$");
draw(Rs--rs, L="$r$");

dot(O);
dot(Rs);
dot(rs);
