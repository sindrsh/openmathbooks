import inh;

unitsize(1cm);

real a = 3;
real h = 0.25;


void drwb(real a, pair sh){
	filldraw(shift(sh)*box((0,0),(a,h)),blue+opacity(0.2));	
}

real s = 0.9;
for(int i; i<5; ++i){
	a = s^i*a;
	pair sh = (-a/2,i*h);
	drwb(a,sh);
}

draw((3/2+0.2,0)--(3/2+0.2,h*5),blue, L=Label("$h$", align=E));
