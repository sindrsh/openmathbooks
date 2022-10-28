import mods2;
size(6 cm, 5 cm, keepAspect=false);
settings.outformat="pdf";
//settings.render = 5;

void ints(real f(real x),real a, real b, int n, bool lb = false){
    real dx = (b-a)/n;
    for (int i = 1; i <= n; ++i){
        real x = a + (i-1)*dx;  
        path s = graph(f, x, x+dx);
        real smin = min(s).y;
        real smax = max(s).y;
        path p= box((x,0), (x+dx, smin));    
        draw(p, green);
        fill(p, palegreen+opacity(0.5));      
        path p2= box((x,smin+ 0.01 pt), (x+dx, smax+ 0.01 pt)); 
        draw(p2, blue);
        fill(p2, paleblue+opacity(0.5)); 
        string sn = format("$s_{%d}$", i);
        if (lb){label( sn, (x+0.5*dx, smin/2) );}
        sn = format("$c_{%d}$", i);
        if (lb){label( sn, (x+0.5*dx, smax), align=N );}      
    } 
}

real f(real x){
    return 1+0.5*x^2+sin(pi*x);
}
real xmin = 0;
real xmax = 2.15;
real a = 0.3;
real b = 2;
int n = 4;
real dx = (b-a)/n;
ints(f, a, b, n, lb=true);

path s = graph(f, xmin, xmax, operator..);
draw(s,L=Label("$f$", position=EndPoint));
xaks(xmin, xmax);
yaks(xmin, max(s).y);
//draw((b,0)--(b,f(b)), dotted);

mktc(a,"$a$");
mktc(b, "$b$");
mktc(a+dx, "$x_2$");
mktc(a+2*dx, "$x_3$");
mktc(a+3*dx,"$x_4$");
