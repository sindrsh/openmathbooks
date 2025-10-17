settings.outformat="pdf";
defaultpen(fontsize(12 pt));

import gang;

g(91,53,6.5*dy);
real dy2 = dy;

label("$9$",(-9*dx,-0.5+dy));
label("$0$",(-7*dx,-0.5+dy));
label("$\cdot$",(-5dx,-0.5+dy));
label("$5$",(-3dx,-0.5+dy));
label("$0$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$4$",(3dx,-0.5+dy));
label("$5$",(5dx,-0.5+dy));
label("$0$",(7dx,-0.5+dy));
label("$0$",(9dx,-0.5+dy));

dy = dy2+dy;

label("$1$",(-7*dx,-0.5+dy));
label("$\cdot$",(-5dx,-0.5+dy));
label("$5$",(-3dx,-0.5+dy));
label("$0$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$5$",(7dx,-0.5+dy));
label("$0$",(9dx,-0.5+dy));

dy = 1.5dy2+dy;
label("$9$",(-9*dx,-0.5+dy));
label("$0$",(-7*dx,-0.5+dy));
label("$\cdot$",(-5dx,-0.5+dy));
label("$3$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$2$",(5dx,-0.5+dy));
label("$7$",(7dx,-0.5+dy));
label("$0$",(9dx,-0.5+dy));


dy = dy2+dy;

label("$1$",(-7*dx,-0.5+dy));
label("$\cdot$",(-5dx,-0.5+dy));
label("$3$",(-dx,-0.5+dy));
label("$=$",(dx,-0.5+dy));
label("$3$",(9dx,-0.5+dy));



draw((2dx,-0.5+dy+dy2/2)--(10dx,-0.5+dy+dy2/2));
label("$4$",(3dx,-0.5+dy+dy2), blue);
label("$8$",(5dx,-0.5+dy+dy2), blue);
label("$2$",(7dx,-0.5+dy+dy2), blue);
label("$3$",(9dx,-0.5+dy+dy2), blue);
