import inh;
unitsize(0.8cm);
real dx = 0.25;
real dy = -0.5;
transform sh = shift(-2.5,1);

for (int i = 0; i < 8; ++i){
		draw(sh*((i*2dx,-dy/2)--(i*2dx,6.5dy)),grey);
	}


path l = (0,0)--(2dx,0);

label("\color{blue}1",sh*(-dx,0));
label("\color{blue}1",sh*(dx,0));
label("$\color{blue}:$",sh*(3dx,0));
label("\color{blue}4",sh*(5dx,0));
label("$\color{blue}=$",sh*(7dx,-0.025));

label("\color{blue}2",sh*(9dx,0));
label("\color{blue},",sh*(10dx,-0.2));
label("\color{blue}7",sh*(11dx,0));
label("\color{blue}5",sh*(13dx,0));

label("\color{red}8",sh*(dx,dy));


draw(sh*shift(0,1.5dy)*l);

label("3",sh*(dx,2dy));

label("0",sh*(3dx,2dy));


label("\color{red}2",sh*(dx,3dy));
label("\color{red}8",sh*(3dx,3dy));



draw(sh*shift(0,3.5dy)*scale(2)*l);

label("2",sh*(3dx,4dy));
label("0",sh*(5dx,4dy));

label("\color{red}2",sh*(3dx,5dy));
label("\color{red}0",sh*(5dx,5dy));

draw(sh*shift(2dx,5.5dy)*scale(2)*l);
label("0",sh*(5dx,6dy));


