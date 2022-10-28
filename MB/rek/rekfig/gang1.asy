import gang;

g(24,3,4*dy-0.25);

label("$2$",(-7*dx,-0.5+dy));
label("$0$",(-5*dx,-0.5+dy));
label("$\cdot$",(-3dx,-0.5+dy));
label("$3$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$6$",(3dx,-0.5+dy));
label("$0$",(5dx,-0.5+dy));

real dy2 = dy;
dy = 2dy;

label("$4$",(-5*dx,-0.5+dy));
label("$\cdot$",(-3dx,-0.5+dy));
label("$3$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$1$",(3dx,-0.5+dy));
label("$2$",(5dx,-0.5+dy));

draw((2dx,-0.5+dy+dy2/2)--(6dx,-0.5+dy+dy2/2));
label("$7$",(3dx,-0.5+dy+dy2));
label("$2$",(5dx,-0.5+dy+dy2));

