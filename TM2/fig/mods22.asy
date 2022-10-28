import graph;
size(6 cm, 5 cm, keepAspect=false);
settings.outformat="pdf";
defaultpen(fontsize(11pt));

struct Int{
    real xmin;
    real xmax;
    real fmax;
    void operator init(real xmin, real xmax, real fmax){
    this.xmin = xmin;
    this.xmax = xmax;
    this fmax = xmax;
    } 
}

real f = real b(real x){return x};
//real f = 2;
Int i =Int(f); 
write(i.f);
real f(real x){
    return 1+0.5*x**2;
}
void xaks(real a, real b, bool lb=true){
    b = b*1.1;
    string Lx = "{}";
    if(lb){ Lx = "$x$"; }

    draw((a,0) -- (b,0), L=Label(Lx,
    position=EndPoint), arrow=Arrow(TeXHead));
}
void yaks(real a, real b, bool lb=true, string l="$y$"){

    string Ly = "{}";
    if(lb){ Ly = l; }
    
    b = b*1.1;
    draw((0, a) -- (0, b), L=Label(Ly,
    position=EndPoint), arrow=Arrow(TeXHead));
}

void ints(real a, real b, int n, bool lb = false){
    real dx = (b-a)/n;
    for (int i = 0; i < n; ++i){
        real x = a + i*dx;       
        path p= box((x,0), (x+dx,f(x)));       
        draw(p, green);
        fill(p, palegreen);
        string sn = format("$s_{%d}$", i);
        if (lb){label( sn, (x+0.5*dx, f(x)/2) );}
    } 
}

void mktc(real x, real b, string nm=""){
    real sc = 0.02*f(b); 
    draw((x,sc) --(x,-sc), L=Label(nm, position=EndPoint)) ;     
    }     


