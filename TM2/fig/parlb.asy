settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(1.8cm);
import graph;

import mods2;
    
pair f(real r, real z){
    return (r*cos(z), r*sin(z));
}

pair F(real z){ return f(0.3,z); }

real u = pi/12;
real v = pi/3;
pair O = (0,0);
pair A = f(2,u);
pair B = f(1.5, v);

draw(O--A,arrow=Arrow(), L=Label("$\vec u$", position=Relative(0.3)));
draw(O--B,arrow=Arrow(), L=Label("$\vec v$", align=NW,position=Relative(0.5)));
draw(A--(A+B)--B, dashed);

path s = graph(F, u, v, operator ..);
draw(s, L=Label("$\theta$", position=Relative(0.5)));

pair hp = A*abs(B)*cos(v-u)/abs(A);
draw(hp--B, L=Label("$|\vec v|\sin \theta$", align=E,position=Relative(0.5)));

void mksq2(pair A, pair B=(1,0), int l=1, int u=1){
	real k = 0.3cm;
	pair nx = k*B/abs(B);
	pair ny = (-nx.y, nx.x);
    draw(A, (0,0)--l*nx--l*nx+u*ny--u*ny--(0,0));
    }  

mksq2(hp, A, l=-1);
