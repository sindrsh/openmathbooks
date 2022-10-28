unitsize(0.3cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";
real s =1.1;
real dy = 2;
real dx = 0;


void h(int M=1, int N=1, int nx=0, int ny=0){
	filldraw(shift(dx+nx*s+M,ny*s+N)*unitcircle,green);
}
void h2(int M=1, int N=1, int nx=0, int ny=0){
	filldraw(shift(dx+nx*s+M,ny*s+N)*unitcircle,blue);
}

real b=2.5;
real h = -1;
h();
h2(2,1,1);
label("$n=1$",(2,h));

dx = 2*2+b;
h();
h(2,1,1);
h2(3,1,2);
h(N=2,ny=1);
h2(2,2,1,ny=1);
h2(3,2,2,ny=1);
label("$n=2$",(dx+3,h));

dx = dx+3*2+b;
h();
h(2,1,1);
h(3,1,2);
h(N=2,ny=1);
h(2,2,1,ny=1);
h2(3,2,2,ny=1);
h(N=3,ny=2);
h(2,2,1,ny=1);
h2(3,3,2,ny=2);
h2(2,3,1,ny=2);
h2(4,3,3,ny=2);
h2(4,2,3,ny=1);
h2(4,1,3);
label("$n=3$",(dx+4,h));

