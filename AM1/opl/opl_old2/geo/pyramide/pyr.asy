import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;

unitsize(1cm);

real a = 4;
real b = 5;
pair A = (0,0);
pair B = (a,0);
pair C = (a,a);
pair D = (0,a);

pair Ep = (a/2,a+b);
pair F = shift(0,-a)*rotate(180,(a/2,a))*Ep; 
pair G = shift(-a/2,-a/2)*rotate(90,(a/2,a))*Ep;
pair H = shift(a/2,-a/2)*rotate(-90,(a/2,a))*Ep;

path p = A--B--C--D--A--F--B--H--C--Ep--D--G--A;

draw(rotate(45)*p);



