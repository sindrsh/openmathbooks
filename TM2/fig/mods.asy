import three;
defaultpen(fontsize(11pt));

triple nvec(triple x){
    return x/abs(x);
}

triple crossn(triple x, triple y){
    triple z = cross(x, y);
    return z/abs(z);
}
void mksq(triple x, triple y, triple s, real l = 0.2){
    triple xn = nvec(x);
    triple yn = nvec(y);
    draw(s -- -l*xn+s ^^ -l*xn+s -- -l*xn+s+l*yn ^^ 
        -l*xn+s+l*yn -- s+l*yn ^^ s+l*yn--s );
}
void mksq2(pair x, pair y, pair s, real l = 0.2){
    pair xn = x/abs(x);
    pair yn = y/abs(y);
    draw(s -- -l*xn+s ^^ -l*xn+s -- -l*xn+s+l*yn ^^ 
        -l*xn+s+l*yn -- s+l*yn ^^ s+l*yn--s );
}
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
void mctckx3(real x, real y=0, string h = "", real a=0.01cm){
        draw(x*X+(a+y)*Y -- x*X+(y-a)*Y, L=Label(h, position=EndPoint));
}
void mktcy3(string lb, real pos){
    draw(pos*Y+0.1X -- pos*Y-0.1X, L=Label(lb, position=EndPoint));
}
void mktcz3(string lb, real pos, triple zn=(1, 1, 0)){
    draw(pos*Z+0.05*zn -- pos*Z-0.05*zn, L=Label(lb, position=EndPoint));
}


