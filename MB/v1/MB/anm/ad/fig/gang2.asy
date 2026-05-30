settings.outformat="pdf";
defaultpen(fontsize(12 pt));

import gang;

g(318,2,-4.8);
real dy2 = dy;

label("$3$",(-9*dx,-0.5+dy));
label("$0$",(-7*dx,-0.5+dy));
label("$0$",(-5*dx,-0.5+dy));
label("$\cdot$",(-3dx,-0.5+dy));
label("$2$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$6$",(3dx,-0.5+dy));
label("$0$",(5dx,-0.5+dy));
label("$0$",(7dx,-0.5+dy));


dy = dy+dy;

label("$1$",(-7*dx,-0.5+dy));
label("$0$",(-5*dx,-0.5+dy));
label("$\cdot$",(-3dx,-0.5+dy));
label("$2$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$2$",(5dx,-0.5+dy));
label("$0$",(7dx,-0.5+dy));


dy = dy2+dy;

label("$8$",(-5*dx,-0.5+dy));
label("$\cdot$",(-3dx,-0.5+dy));
label("$2$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$1$",(5dx,-0.5+dy));
label("$6$",(7dx,-0.5+dy));

draw((2dx,-0.5+dy+dy2/2)--(8dx,-0.5+dy+dy2/2));
label("$6$",(3dx,-0.5+dy+dy2));
label("$3$",(5dx,-0.5+dy+dy2));
label("$6$",(7dx,-0.5+dy+dy2));

