import "../anm.asy" as figs;


real x = 0.25;
real y = 0;
real dy = 0.7;
real dyd = 0.04;

real dx1 = 0.25;

int a = 2;
int b = 5;

transform sh = shift((1,1));
label((-3,1),"$138+6,7=175$",align=E);

void n1(int i,int j){
	if (j==-1){
		label(sh*((a-j+dx1)*x,y-dyd),"$"+","+(string) i+"$");
	}
	else
		label(sh*((a-j)*x,y),(string) i);
}

void n2(int i,int j){
	if (j==-1){
		label(sh*((a+b-j+dx1)*x,y-dyd),"$"+","+(string) i+"$");
	}
	else
		label(sh*((a+b-j)*x,y),(string) i);
}



void ny(){
	y=y-dy;
}

n2(8,0);
n2(0,1);
n2(1,2);
draw(sh*(0,-1/2*dy)--(sh*((a+b+2)*x,-1/2*dy)));
ny();

n1(2,0);
n2(0,-1);
n2(0,0);
n2(1,1);
n2(1,2);

ny();
n1(5,0);
n2(5,0);
n2(1,1);
n2(1,2);

ny();
n1(0,0);
n1(6,1);
n2(5,0);
n2(7,1);
n2(1,2);




