import plus;

import inh;

unitsize(0.5 cm);

real dx = 0.4;
real dy = -0.9;
real dyy = 0.6;
real h1 = 0.8;
real h2 = -2.5;
path c = (-1.5dx,-1/3*dy)--(-0.5*dx,1/3*dy);

for (int i = 0; i < 2; ++i){
	path b = shift(-2*dx*i-2*dx,0)*box((0,h1),(2*dx,h2));
	pen p = p1;
	if (i==1){p=p10;}
	if (i==2){p=p100;}
	filldraw(b, p+opacity(0.1),drawpen=grey+opacity(0.1));	
	}

label("$-$",-((2*(2)+1)*dx,-dy));
label("$=$",-((2*(2)+1)*dx,-2dy));
draw((0,1.5dy)--(-6dx,1.5dy));


label("3",(-dx,0));
label("8",(-3dx,0),blue);

label("7",(-dx,dy));
label("6",(-3dx,dy),red);

label("6",(-dx,2dy));
label("1",(-3dx,2dy),Green);

draw(shift(-2dx)*c);
label("10",(-dx,dyy),black+fontsize(6pt));



