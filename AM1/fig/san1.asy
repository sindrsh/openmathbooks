import inh;
unitsize(0.5cm);
import graph;

pair A = (-1,-1);
pair B = (1,-1);
pair C = (1,1);
pair D = (-1,1);

pen p = black+1bp;

real l = 0.2;

pair Dx = D+(l,0);
pair Dy = D-(0,l);

pair f(real v){
	return l*(cos(v),sin(v));	
}

transform h = reflect((1,0),(-1,0));
transform v = reflect((0,-1),(0,1));
transform d = reflect(D,B);

path s = shift(D+(l,-l))*graph(f,pi,pi/2);

path p1 = h*Dy--s;

p1 = rotate(270)*p1--rotate(180)*p1--rotate(90)*p1--p1;

path eye = scale(0.2)*unitcircle;

real c = 0.4;
pair e1 = (0,0);
pair e2 = C-(c,c);
pair e6 = (1-c,0);

real dx = 2.5;
path b = scale(2.4)*shift((-0.5,-0.5))*unitsquare;

// one
draw(p1,p);
filldraw(eye);

// two
transform sh = shift(dx); 
draw(sh*p1,p);
filldraw(sh*shift(e2)*eye);
filldraw(sh*d*shift(e2)*eye);

// three
transform sh = shift(2dx); 
draw(sh*p1,p);
filldraw(sh*shift(e2)*eye);
filldraw(sh*d*shift(e2)*eye);
filldraw(sh*eye);

// four
transform sh = shift(3dx); 
draw(sh*p1,p);
filldraw(sh*shift(e2)*eye);
filldraw(sh*d*shift(e2)*eye);
filldraw(sh*v*shift(e2)*eye);
filldraw(sh*h*shift(e2)*eye);

draw(sh*b,blue+1bp);

// five
transform sh = shift(4dx); 
draw(sh*p1,p);
filldraw(sh*shift(e2)*eye);
filldraw(sh*d*shift(e2)*eye);
filldraw(sh*v*shift(e2)*eye);
filldraw(sh*h*shift(e2)*eye);
filldraw(sh*eye);

// six
transform sh = shift(5dx); 
draw(sh*p1,p);
filldraw(sh*shift(e2)*eye);
filldraw(sh*d*shift(e2)*eye);
filldraw(sh*v*shift(e2)*eye);
filldraw(sh*h*shift(e2)*eye);
filldraw(sh*shift(e6)*eye);
filldraw(sh*v*shift(e6)*eye);
