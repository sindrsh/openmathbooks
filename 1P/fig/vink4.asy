import inh;
import figs;
unitsize(2cm);


pair A = f(pi/6);
pair B = f(0);
pair C = -A;
pair D = -B;

dv(A,D,O,red,sc=0.25,l="butt vinkel",al=N+0.5W,D=(-2pi,0));
dv(B,A,O,l="spiss vinkel",al=0.5N+E);

draw(B--D);
draw(A--O);
