import inh;
unitsize(0.8cm);
real dx = 0.25;
real dy = -0.5;
transform sh = shift(-2.5,1);

for (int i = -1; i < 9; ++i){
		draw(sh*((i*2dx,-dy/2)--(i*2dx,6.5dy)),grey);
	}


path l = (0,0)--(2dx,0);

label("8",sh*(-dx,0));
label("9",sh*(dx,0));
label("4",sh*(3dx,0));
label("$:$",sh*(5dx,0));
label("3",sh*(7dx,0));
label("$=$",sh*(9dx,-0.025));

label("2",sh*(11dx,0));


label("6",sh*(-dx,dy), red);


draw(sh*shift(-2dx,1.5dy)*l);

label("2",sh*(-dx,2dy));

label("9",sh*(dx,2dy));


label("2",sh*(-dx,3dy), red);
label("7",sh*(dx,3dy), red);

label("9",sh*(13dx,0));
label("8",sh*(15dx,0));

draw(sh*shift(-2dx,3.5dy)*scale(2)*l);

label("2",sh*(dx,4dy));

label("4",sh*(3dx,4dy));
label("2",sh*(dx,5dy), red);

label("4",sh*(3dx,5dy), red);
draw(sh*shift(0,5.5dy)*scale(2)*l);
label("0",sh*(3dx,6dy));
