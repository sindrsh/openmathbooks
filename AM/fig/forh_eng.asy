settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(2 cm);
usepackage("inputenc");
real lw = 0.025bp;
real h = 0.2;
path b = box((0,0), (1,h));
path B = box((-lw,-lw), (1+lw,7*h+2*lw));
draw(B, black+opacity(0.6));
int cnt = 0;
for (int i = 0; i <= 1; ++i){
		filldraw(shift(0,h*i)*b, red+opacity(0.1), drawpen=red);
		++cnt;
    }
for (int i = cnt; i <= 6; ++i){
		filldraw(shift(0,h*i+lw)*b, blue+opacity(0.1), drawpen=blue);
    }
label(rotate(90)*"7 parts juice", (-.3,3.5*h));
label("5 parts water", (1.65,(4+4)/2*h+lw));
label("2 parts syrup", (1.65,h));
