import "../../inh" as inh;
import "../../drwgrph" as grph;
import "../../geo" as geo;


unitsize(2cm);

pair f(real x){
	return (cos(x), sin(x));
}

void ctick(pair A){
	real l = 0.05;
	draw(shift(0,1)*(A-l*A--A+l*A));
}

draw(shift(0,1)*unitcircle);

real dx = pi/4;
pair A0 = f(-pi/2-2dx);
pair A1 = f(-pi/2-dx);
pair A2 = f(-pi/2+dx);
pair A3 = f(-pi/2+2dx);
pair A4 = f(-pi/2+3dx);

ctick(A0);
ctick(A1);
xaks(0,4*dx);

for(int i; i<4*dx; ++i){
	mktc(i*dx,"");
}
mktc(dx,"0");

draw((0,1)--shift(0,1)*A2);

draw((dx,0)--shift(0,1)*A2, dotted);
draw((2dx,0)--shift(0,1)*A3, dotted);
draw((3dx,0)--shift(0,1)*A4, dotted);


