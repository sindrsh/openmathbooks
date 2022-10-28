size(0, 5 cm);
settings.outformat="pdf";
import graph;
defaultpen(fontsize(11pt));


real n = 8;
real l = 7;
real m = l/n;
pair f(real t){
    return (0.5*sin(2*pi/m*t),3-t+l);
    }
  
guide coil(guide g=nullpath, real a, real b, int n)
{
  real dt=(b-a)/n;
  for(int i=0; i <= n; ++i) {
    real t = a+dt*i;
    g=g..f(t);
  }
  return g;
}
real h = 4;
real b = 4;
draw(coil(0, l, 300));
real H = h+1;
draw(L=Label("$L_0$", align=W), (-3, l+3)--(-3, 3),black,Bars,PenMargin);
dot((0,10));
//draw(A[0]-h--A[1]-h,black,Bar,PenMargin);
//label("$0$", (A[1], -4*A[2]), align=S);
real yx= 3;
draw((yx, 10)--(yx,-6), L=Label("$y$", position=EndPoint), arrow=Arrow(TeXHead));
