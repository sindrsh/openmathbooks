import solids;
settings.outformat="pdf";
currentprojection=orthographic(5,4,4);
settings.render = 10;
defaultpen(fontsize(11 pt));
unitsize(0.2cm);

void dwb(real x, triple sh=(0,0,0)){
	surface p = xscale3(x)*yscale3(x)*zscale3(1)*unitcube;
	draw(shift(sh)*p,lightblue,black+0.5pt,nolight);
}

real s = 0.8;
real m = 0.35;
real a = 10;
triple sh = (0,0,0);

dwb(a, (0,0,0));

for(int i=1; i<5; ++i){
	a=s*a;
	sh = shift((a/2*(1-s),a/2*(1-s),1))*sh; 
	dwb(a, sh);	
}


/*
pen p = blue;
draw((x,0,0)--(x,y,0)--(0,y,0), p);
draw((x,0,0)--(x,0,z), p);
draw((0,y,0)--(0,y,z), p);
draw((x,y,0)--(x,y,z), p);
draw((x,0,z)--(x,y,z)--(0,y,z)--(0,0,z)--cycle, p);
*/


