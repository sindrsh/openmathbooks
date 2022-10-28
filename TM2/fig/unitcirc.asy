//import babel;
settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(2cm);
import mods;
import graph;

real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

path s = graph(f, 0, 2*pi, operator ..);
draw(s);
draw(o -- (1,0), L=Label("$0$", position=Relative(1)));
draw(o -- (-1,0), L=Label("$\pi$", position=Relative(1)));

int[] array={6,4,3,2};
for(int k : array) {
    string name = "$\color{black}\frac{\pi}{%d}$";
    string l = format(name, k);
    draw(o -- f(pi/k), blue, L=Label(l, position=Relative(1)));
}

int[] array={-6,-4,-3,-2};
for(int k : array) {
    string name = "$\color{black}-\frac{\pi}{%d}$";
    string l = format(name, abs(k));
    draw(o -- f(pi/k), blue, L=Label(l, position=Relative(1)));
}

int[] array={5,3,2};
for(int k : array) {
    int k2 = k+1;
    string k2l = (string) k2;
    string name = "$\color{black}\frac{%d\pi}{x}$";
    string l = format(name, k);
    string l = replace(l, "x", k2l);    
    draw(o -- f(k*pi/k2), blue, L=Label(l, position=Relative(1)));
}

int[] array={-5,-3,-2};
for(int k : array) {
    int k2 = abs(k)+1;
    string k2l = (string) k2;
    string name = "$\color{black}-\frac{%d\pi}{x}$";
    string l = format(name, abs(k));
    string l = replace(l, "x", k2l);    
    draw(o -- f(k*pi/k2), blue, L=Label(l, position=Relative(1)));
}


