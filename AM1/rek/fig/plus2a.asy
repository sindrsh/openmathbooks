import plus;

import inh;

unitsize(0.5 cm);

real dx = 0.4;
real dy = -0.9;
real dyy = 0.6;
real h1 = 0.8;
real h2 = -2.5;

for (int i = 0; i < 3; ++i){
	path b = shift(-2*dx*i-2*dx,0)*box((0,h1),(2*dx,h2));
	pen p = p1;
	if (i==1){p=p10;}
	if (i==2){p=p100;}
	filldraw(b, p+opacity(0.1),drawpen=grey+opacity(0.1));	
	}

label("$+$",-((2*(3)+1)*dx,-dy));
draw((0,1.5dy)--(-8dx,1.5dy));


label("3",(-dx,0),blue);
label("7",(-3dx,0));
label("2",(-5dx,0));

label("6",(-dx,dy),blue);
label("8",(-3dx,dy));

label("9",(-dx,2dy),Green);


