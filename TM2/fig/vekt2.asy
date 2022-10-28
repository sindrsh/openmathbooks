settings.outformat="pdf";
defaultpen(fontsize(11pt));

import three;
import mods;
unitsize(1cm);

void xyz(real[] t = {1,1,1}, triple zp=(1,1,0), 
bool lb=true, bool tc=true, bool tcl=true){
    real x = 4.9;
    real y = 4.9;
    real z = 3.9;
    string Lx = "{}";
    string Ly = "{}";
    string Lz = "{}";
    if(lb){
        Lx = "$x$";
        Ly = "$y$";
        Lz = "$z$";
    }

    draw(O -- x*X, L=Label(Lx,
    position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
    draw(O -- y*Y, L=Label(Ly,
    position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
    draw(O -- z*Z, L=Label(Lz,
    position=EndPoint), arrow=Arrow3(TeXHead2));

    if (tc){
        real dx = (x-0.9)/t[0];
        real dy = (y-0.9)/t[1];
        real dz = (z-0.9)/t[2];
        
        for (real n = 1; n <= t[0]; ++n) {
        string h = "";
        if (tcl){
            h = (string) n;
        }
        draw(n*dx*X+0.1Y -- n*dx*X-0.1Y, L=Label(h, position=EndPoint));
        }
        for (real n = 1; n <= t[1]; ++n) {
        string h = "";
        if (tcl){
            h = (string) n;
        }
        draw(n*dy*Y+0.1X -- n*dy*Y-0.1X, L=Label(h, position=EndPoint));
        }
        triple zn = zp/abs(zp);
        for (real n = 1; n <= t[2]; ++n) {
        string h = "";
        if (tcl){
            h = (string) n;
        }
        draw(n*dz*Z+0.1*zn -- n*dz*Z-0.1*zn, L=Label(h, position=EndPoint));
        }
    }
}

int a = 4;
int b = 4;
int c = 4;
real[] t = {a, b, c};
xyz(t=t);
real[] sc = {4./a, 4./b, 3./c};
real xs = 2*sc[0];
real ys = 3*sc[1];
real zs = 4*sc[2];

real xs2 = 3*sc[0];
real ys2 = 4*sc[1];
real zs2 = 4*sc[2];

triple A = (xs, ys, zs);
triple A2 = (xs2, ys2, zs2);
triple xy = xs*X+ys*Y;
triple xyn = xy/abs(xy);
draw(O -- A, blue, L=Label("$\vec u$",
position=Relative(0.5), align=NW), arrow=Arrow3(DefaultHead2));


draw(ys*Y -- xs*X+ys*Y, dotted);
draw(xs*X -- xs*X+ys*Y, dotted);
draw(zs*Z -- A, dotted);
draw(xs*X+ys*Y -- A, dotted);

draw((1,1,0) -- A2, blue, L=Label("$\vec u$",
position=Relative(0.5), align=NW), arrow=Arrow3(DefaultHead2));
draw(ys2*Y -- xs2*X+ys2*Y, dotted);
draw(xs2*X -- xs2*X+ys2*Y, dotted);
draw(zs2*Z -- A2, dotted);
draw(xs2*X+ys2*Y -- A2, dotted);
draw((1,0,0)--(1,1,0)^^(1,1,0)--(0,1,0), dotted);

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

