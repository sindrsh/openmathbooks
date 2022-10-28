import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;


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


