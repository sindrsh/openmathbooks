import inh;

unitsize(1cm);

real a = 3;
real h = 0.25;


void drwb(real a, pair sh){
	filldraw(shift(sh)*box((0,0),(a,h)),blue+opacity(0.2));	
}

real s = 0.9;
pair sh = (0,0);
for(int i; i<5; ++i){
	a = s^i*a;
	sh = (i*0.85,i*h);
	drwb(a,sh);
}

draw((sh.x+a+0.2,0)--(sh.x+a+0.2,h*5),blue, L=Label("$h$", align=E));
