import graph;
import x11colors;
settings.outformat="pdf";
defaultpen(fontsize(11pt));

void xaks(real a, real b, string l="{$x$}"){
    b = b*1.1;

    draw((a,0) -- (b,0), L=Label(l,
    position=EndPoint), arrow=Arrow(TeXHead));
}
void yaks(real a, real b, string l="{}"){

    b = b*1.1;
    draw((0, a) -- (0, b), L=Label(l,
    position=EndPoint), arrow=Arrow(TeXHead));
}

void ints(real f(real x),real a, real b, int n, bool lb = false){
    real dx = (b-a)/n;
    for (int i = 1; i <= n; ++i){
        real x = a + (i-1)*dx;       
        path p= box((x,0), (x+dx,f(x)));       
        draw(p, green);
        fill(p, palegreen+opacity(0.5));
        string sn = format("$s_{%d}$", i);
        if (lb){label( sn, (x+0.5*dx, f(x)/2) );}
    } 
}

void mktc(real x, string nm=""){
    draw((x,0), (0,0.1cm) --(0,-0.1cm), L=Label(nm, position=EndPoint));
    }      
void mktcy(real y, string nm=""){
    draw((0,y), (0.1cm,0) --(-0.1cm,0), L=Label(nm, position=EndPoint));    
    }     

