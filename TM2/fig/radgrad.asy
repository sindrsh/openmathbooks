import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(2cm);


pair f(real z){
    return (cos(z), sin(z));
}
pair A = (-1,0);
pair B = (1,0);


path s = graph(f,0,pi);
path p = A--B;

draw(p);
draw(s, arrow=ArcArrow(), blue, L=Label("$180^\circ$", position=Relative(0.5)));

transform sh = shift(3,0);
draw(sh*p);
draw(sh*s, arrow=ArcArrow(), blue, L=Label("$\pi$", position=Relative(0.5)));


