import inh;
unitsize(0.8cm);
real dx = 0.25;
real dy = -0.5;
transform sh = shift(-2.5,1);

for (int i = 0; i < 8; ++i){
		draw(sh*((i*2dx,-dy/2)--(i*2dx,4.5dy)),grey);
	}


path l = (0,0)--(2dx,0);

label("\color{blue}9",sh*(dx,0));
label("\color{blue}2",sh*(3dx,0));
label("$\color{blue}:$",sh*(5dx,0));
label("\color{blue}4",sh*(7dx,0));
label("$\color{blue}=$",sh*(9dx,-0.025));

label("\color{blue}2",sh*(11dx,0));


label("\color{red}8",sh*(dx,dy));


draw(sh*shift(0,1.5dy)*l);

label("1",sh*(dx,2dy));

label("2",sh*(3dx,2dy));


label("\color{red}1",sh*(dx,3dy));
label("\color{red}2",sh*(3dx,3dy));

label("\color{blue}3",sh*(13dx,0));

draw(sh*shift(0,3.5dy)*scale(2)*l);

label("0",sh*(3dx,4dy));
