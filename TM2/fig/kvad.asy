import "../../inh" as inh;
import "../../drwgrph" as grph;
unitsize(2cm);

real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

path s = graph(f, 0, 2*pi, operator ..);
draw(s);
draw((0,0)--(0,1), L=Label("$1$", align=N,position=Relative(1)));
draw((0,0)--(0,-1), L=Label("$-1$", align=S,position=Relative(1)));
draw((0,0)--(1,0), L=Label("$0$", align=E,position=Relative(1)));
draw((0,0)--(-1,0), L=Label("$-1$", align=W,position=Relative(1)));

label("1. kvadrant", (0.45, 0.35), fontsize(8.5pt));
label("2. kvadrant", (-0.45, 0.35), fontsize(8.5pt));
label("3. kvadrant", (-0.45, -0.35), fontsize(8.5pt));
label("4. kvadrant", (0.45, -0.35), fontsize(8.5pt));


