import "../anm.asy" as figs;

real x = 0.25;
real y = 0;
real dy = 0.5;

transform sh;
int a;
int b;
int c;

void n1(int i,int j, pen p=black){
	label(sh*((a-j)*x,y),(string) i, p);
}

void n2(int i,int j, pen p=black){
	label(sh*((a+b-j+1)*x,y),(string) i, p);
}

void n3(int i,int j, pen p=black){
	label(sh*((a+b+c-j+1)*x,y),(string) i, p);
}

void ny(){
	y=y-dy;
}






