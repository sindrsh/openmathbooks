import inh;
import figs;

unitsize(1.5 cm);

draw(scale(2/1.5)*unitcircle);

int j = 30;
real dx = 0.05;
for(int i=0; i*j< 360;++i){
	pair A = (2/1.5)*f(pi*i*j/180);
	int ij = i*j;
	string l = (string) ij;
	draw((1-dx)*A--(1+dx)*A,L=Label("$"+l+"^{\circ}"+"$",position=Relative(1)));
}
label("$360^{\circ}$",(0.95,0));

real y = -0.6;
real dy = -2.5;
real dx = 2.5;



transform sh = shift(-dx,y+dy);
draw(sh*unitcircle);
pair B = sh*f(0);
pair C = sh*(0,0);

draw(B--C);
label("$0^\circ$",B,E);

transform sh = shift(-dx,y+2dy);
draw(sh*unitcircle);

pair A = sh*f(pi);
pair B = sh*f(0);
pair C = sh*(0,0);

dv(A,B,C,"$180^\circ$",al=N,sc=0.2);
draw(A--C--B);


transform sh = shift(0,y+dy);
draw(sh*unitcircle);

pair A = sh*f(pi/3);
pair B = sh*f(0);
pair C = sh*(0,0);

dv(A,B,C,"$60^\circ$",al=NE,sc=0.3);
draw(A--C--B);

transform sh = shift(dx,y+dy);
draw(sh*unitcircle);

pair A = sh*f(pi/2);
pair B = sh*f(0);
pair C = sh*(0,0);

mksq2(C,A,p=blue,sc=1.5);
label("$90^\circ$",C,6NE,blue);
draw(A--C--B);

transform sh = shift(0,y+2dy);
draw(sh*unitcircle);

pair A = sh*f(4pi/3);
pair B = sh*f(0);
pair C = sh*(0,0);

dv(A,B,C,"$240^\circ$",sc=0.2,al=NW,D=(2pi,0));
draw(A--C--B);

transform sh = shift(dx,y+2dy);
draw(sh*unitcircle);
pair B = sh*f(0);
pair C = sh*(0,0);

draw(sh*scale(0.2)*unitcircle,blue);
draw(B--C);
label("$360^\circ$",C,5W,blue);



